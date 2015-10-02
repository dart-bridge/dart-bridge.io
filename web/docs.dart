import 'package:bridge/bridge_client.dart';
import 'package:app/client.dart';
import 'dart:html';
import 'dart:async';


main() async {
  // Register shared data structures
  registerTransport();
  // Connect the tether
  await globalTether();


  final container = querySelector('#doc-content');
  final titleContainer = querySelector('#doc-title');
  final validator = new NodeValidatorBuilder.common()
  ..allowNavigation(new SiteUriPolicy());
  final router = new Router();

  routes.docs.forEach((docRoute) async {
    router.on(docRoute.url).listen((m) async {
      container.setInnerHtml(await docRoute.doc(), validator: validator);
      titleContainer.text = docRoute.title;
    });

    AnchorElement link = querySelector('a[href="${docRoute.url}"]');
    await for (MouseEvent event in link.onClick) {
      event.preventDefault();
      router.navigate(docRoute.url);
    }
  });

  querySelectorAll('.dropdown').forEach((e) async {
    final button = e.querySelector('button');
    e.querySelectorAll('a').onClick.listen((_) => e.classes.remove('shown'));
    final toggle = (Event _) {
      _.stopImmediatePropagation();
      e.classes.toggle('shown');
    };
    button.onMouseUp.listen(toggle);
    button.onTouchEnd.listen(toggle);
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
