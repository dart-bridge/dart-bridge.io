part of app;

class Tapper {
  final Element _element;
  final StreamController<UIEvent> _controller = new StreamController<UIEvent>();

  Tapper(Element this._element) {
    _startListening();
  }

  Stream<UIEvent> get stream => _controller.stream;
  
  void _startListening() {
    _element.onMouseDown.listen(_start);
    _element.onMouseUp.listen(_end);
    _element.onTouchStart.listen(_start);
    _element.onTouchEnd.listen(_end);
  }

  void _start(UIEvent event) {
    event.preventDefault();
  }

  void _end(UIEvent event) {
    event.preventDefault();
    _controller.add(event);
  }
}