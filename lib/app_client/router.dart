part of app;

class Router {
  final Map<RegExp, List<StreamController<Match>>> _routes = {};

  Router() {
    window.onPopState
//        .where((e) => e.state != null)
        .map((e) => window.location.pathname)
        .listen(_navigate);
  }

  _push(String uri) {
    window.history.pushState(uri, document.title, uri);
  }

  Stream<Match> on(String pattern) {
    final controller = new StreamController<Match>();
    final List<StreamController<Match>> listeners =
    _routes[new RegExp('$pattern\$')] ??= [];

    listeners.add(controller);
    return controller.stream;
  }

  void navigate(String uri) {
    if (uri == null) window.location.reload();
    _navigate(uri);
    _push(uri);
  }

  void _navigate(String uri) {
    if (uri == null) window.location.reload();
    for (final matcher in _routes.keys) {
      if (matcher.hasMatch(uri))
        return _updateListeners(matcher.firstMatch(uri), _routes[matcher]);
    }
    if (window.location.pathname != uri)
      window.location.assign(uri);
  }

  void _updateListeners(Match match, List<StreamController<Match>> listeners) {
    listeners.forEach((c) => c.add(match));
  }
}
