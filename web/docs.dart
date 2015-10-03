import 'package:bridge/bridge_client.dart';
import 'package:app/client.dart';
import 'dart:html';
import 'dart:async';


main() async {
  // Register shared data structures
  registerTransport();
  // Connect the tether
  await globalTether();
  final router = new Router();
  anchorEvents(router);
  menu();

  final container = querySelector('#doc-content');
  final titleContainer = querySelector('#doc-title');
  final validator = new NodeValidatorBuilder.common()
    ..allowNavigation(new SiteUriPolicy());

  routes.docs.forEach((category, docRoutes) async {
    for (final docRoute in docRoutes)
      router.on(docRoute.url).listen((m) async {
        titleContainer.setInnerHtml('&nbsp;');
        container.setInnerHtml('Loading...');
        container.setInnerHtml(await docRoute.doc(), validator: validator);
        titleContainer.text = docRoute.title;
      });
  });

}

Routes routes = new Routes(new ClientDocRequester());

class SiteUriPolicy implements UriPolicy {
  bool allowsUri(String url) {
    final uri = Uri.parse(url);
    return [
      'github.com',
      'dart-bridge.github.io',
      'dart-bridge.io',
      'pub.dartlang.org',
      'www.dartlang.org',
    ].contains(uri.authority);
  }
}
