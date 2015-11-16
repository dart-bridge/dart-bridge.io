library main;

import 'dart:async';

import 'package:bridge/bridge.dart' hide Route;
import '../app.dart';

/// Controllers
part 'pages_controller.dart';

/// This is the entry point to the transport layer of the application.
/// It's where tether calls and HTTP routes are delegated to controllers.
///
/// Note that the same controller instance will be used for all requests.
class Main {
  PagesController controller;

  Main(this.controller);

  routes(Router router) {
    router.get('/', controller.index).named('index');

    router.get('docs', controller.docs).named('docs');
    router.get('download', () => redirect('docs/installation'));
//    router.get('resources', controller.resources).named('resources');

  }

  tether(Tether tether) {
  }
}
