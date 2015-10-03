part of app;

class Tapper {
  final JsObject _hammer;
  final Element _element;
  final StreamController<JsObject> _controller = new StreamController<JsObject>();

  Tapper(Element element)
  : _element = element,
  _hammer = new JsObject(context['Hammer'], [element]) {
    _startListening();
  }

  Stream<JsObject> get stream => _controller.stream;

  void _startListening() {
    _hammer.callMethod('on', ['tap',_onTap]);
  }

  void _onTap(JsObject event) {
    _controller.add(event);
  }
}