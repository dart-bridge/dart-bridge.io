import 'package:bridge/tether_client.dart';
import 'package:app/client.dart';
import 'dart:html';
import 'dart:async';

/// This the example boilerplate of a client script file. Inject this
/// script into a template by using the following syntax in a controller.
///
///     return template('templateName', withScript: 'main');
///
/// A good practice would be to delegate the client script into your client
/// application in **lib/client** as neatly as possible.
main() async {
  // Connect the tether
  await globalTether();

  // Register shared data structures
  registerSharedStructures(tether);

  final container = querySelector('#doc-content');
  final validator = new NodeValidatorBuilder.common()
  ..allowNavigation(new SiteUriPolicy());
  final router = new Router();

  routes.docs.forEach((url, handler) async {
    router.on('/docs/$url').listen((m) async {
      container.setInnerHtml(await handler(), validator: validator);
    });

    AnchorElement link = querySelector('a[href="/docs/$url"]');
    await for (MouseEvent event in link.onClick) {
      event.preventDefault();
      router.navigate('/docs/$url');
    }
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
    ].contains(uri.authority);
  }
}
