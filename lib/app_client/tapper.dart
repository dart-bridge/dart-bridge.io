part of app;

class Tapper {
  final Element _element;
  final StreamController<UIEvent> _controller = new StreamController<UIEvent>();
  bool _active = false;
  bool _touch = false;
  bool _mouseEventIsBlocked = false;

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
    _active = true;
    _touch = false;
  }

  Future _onMouseUp(MouseEvent event) async {
    if (_mouseEventIsBlocked) return;
    if (_active && !_touch)
      _controller.add(event);
    await new Future.delayed(const Duration(milliseconds: 900));
    _active = false;
  }

  void _onTouchStart(TouchEvent event) {
    _blockMouseEvent();
    if (_active) return;
    _active = _touch = true;
  }

  Future _onTouchEnd(TouchEvent event) async {
    if (_active && _touch)
      _controller.add(event);
    _active = false;
  }

  Future _blockMouseEvent() async {
    _mouseEventIsBlocked = true;
    await new Future.delayed(const Duration(seconds: 2));
    _mouseEventIsBlocked = false;
  }
}