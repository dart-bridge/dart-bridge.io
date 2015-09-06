import 'package:bridge/http.dart';
import 'package:bridge/tether.dart';
import 'package:bridge/view.dart';
import '../shared/library.dart';

/// Controllers
import 'pages_controller.dart';

/// This is the entry point for the client side application.
/// It's where tether calls and HTTP routes are delegated to controllers.
///
/// Note that the same controller instance will be used for all requests.
class Api {
  PagesController controller;

  Api(PagesController this.controller);

  routes(Router router, Routes routes) {
    router.get('/', controller.index, name: 'index');

    routes.docs.forEach((url, handler) {
      router.get('docs/$url', () async =>
          template('doc', withData: {
            'content': await handler(),
            'urls': routes.docs.keys,
          }, withScript: 'main'));
    });
  }

  tether(Tether tether) {
    resolveTetherListener(tether, 'index', controller.index);
  }
}
