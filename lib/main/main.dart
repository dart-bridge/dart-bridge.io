library main;

import 'dart:async';

import 'package:bridge/bridge.dart' hide Route;
import '../app.dart';

/// Controllers
part 'pages_controller.dart';

part 'error_controller.dart';

/// This is the entry point to the transport layer of the application.
/// It's where tether calls and HTTP routes are delegated to controllers.
///
/// Note that the same controller instance will be used for all requests.
class Main extends Pipeline {
  final PagesController controller;
  final ErrorController errorController;

  @override get middleware => [
    defaultMiddleware,
    TemplatesMiddleware,
  ];

  @override get errorHandlers => {
    HttpNotFoundException: errorController.notFound,
    Object: errorController.general,
  };

  Main(this.controller, this.errorController);

  routes(Router router, DocsRepository docs) async {
    final allDocs = await docs.all();
    final menu = new Map<String, List<Doc>>.from(allDocs);
    menu.forEach((cat, list) {
      menu[cat] = list.map((Doc d) => new Doc(
          d.title, '/docs/${d.url}', ''
      ));
    });

    router.get('/', controller.index).named('index');
    router.get('download', () => redirect('docs/installation'));

    router.group('docs', () {
      allDocs.forEach((String category, List<Doc> docs) {
        for (final doc in docs) {
          router.get(doc.url, () {
            return template('doc').withScript('generic')
              ..title = doc.title
              ..markup = doc.markup
              ..menu = menu
              ..headerColor = 'blue'
              ..docs = allDocs;
          });
        }
      });
    }).named('docs');

    router.get('docs', controller.docs).named('docs');
  }

  tether(Tether tether) {}
}
