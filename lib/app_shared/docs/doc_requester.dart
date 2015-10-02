part of app.shared;

abstract class DocRequester {
  Future<String> request(Uri url);

  Future<String> get(String path) {
    final cleanPath = path.replaceFirst(new RegExp('^/'), '');
    return request(new Uri.https('dart-bridge.github.io', '/docs/$cleanPath.html'));
  }
}
