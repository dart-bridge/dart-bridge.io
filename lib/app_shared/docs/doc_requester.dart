part of app.shared;

abstract class DocRequester {
  static String host = 'dart-bridge.github.io';
  static String prefix = 'docs/';
  static bool https = true;

  Future<String> request(Uri url);

  Future<String> get(String path) {
    final cleanPath = path.replaceFirst(new RegExp('^/'), '');
    final route = '/$prefix$cleanPath.html';
    final uri = https ? new Uri.https(host, route) : new Uri.http(host, route);
    return request(uri);
  }
}
