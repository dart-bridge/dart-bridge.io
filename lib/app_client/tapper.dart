part of app;

class Tapper {
  final Element _element;
  final StreamController<UIEvent> _controller = new StreamController<UIEvent>();
  bool _active = false;
  bool _touch = false;
  bool _mouseEventIsBlocked = false;
  Completer _unBlockMouseEventsCompleter;

  Tapper(Element this._element) {
    _startListening();
  }

  Stream<UIEvent> get stream => _controller.stream;

  bool get isActive => _active;

  void _startListening() {
    _element.onMouseDown.listen(_onMouseDown);
    _element.onMouseUp.listen(_onMouseUp);
    _element.onTouchStart.listen(_onTouchStart);
    _element.onTouchEnd.listen(_onTouchEnd);
  }

  void _onMouseDown(MouseEvent event) {
    if (_active || _mouseEventIsBlocked) return;
    print('mouse started');
    _active = true;
    _touch = false;
  }

  void _onMouseUp(MouseEvent event) {
    if (_mouseEventIsBlocked) return;
    print('mouse fired');
    if (_active && !_touch)
      _controller.add(event);
    _active = false;
  }

  void _onTouchStart(TouchEvent event) {
    print('touch started');
    _blockMouseEvent();
    if (_active) return;
    _active = _touch = true;
  }

  void _onTouchEnd(TouchEvent event) {
    print('touch fired');
    if (_active && _touch)
      _controller.add(event);
    _active = false;
  }

  Future _blockMouseEvent() async {
    final completer = new Completer();
    _unBlockMouseEventsCompleter = completer;
    _mouseEventIsBlocked = true;
    print('mouse blocked');
    new Future.delayed(const Duration(seconds: 2)).then(completer.complete);
    await completer.future;
    if (_unBlockMouseEventsCompleter.isCompleted) {
      _mouseEventIsBlocked = false;
      print('mouse un-blocked');
    }
  }
}