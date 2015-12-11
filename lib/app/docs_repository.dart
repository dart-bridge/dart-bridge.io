part of app;

class DocsRepository {
  final HttpClient _http;
  final String _host;
  final bool _https;
  DateTime _updatedAt;
  Map<String, List<Doc>> _cache;

  DocsRepository(this._http, Config config)
    : _host = config('docs.host'),
      _https = config('docs.https');

  Future<Map<String, List<Doc>>> all() async {
    if (_shouldUpdate) {
      _cache = await _fetch();
      _updatedAt = new DateTime.now();
    }
    return _cache;
  }

  bool get _shouldUpdate {
    return _updatedAt
        ?.add(const Duration(hours: 3))
        ?.isBefore(new DateTime.now())
        ?? true;
  }

  Future<String> _getContents(String url) async {
    final request = await _http.getUrl(
        Uri.parse(url)
    );

    final response = await request.close();

    return response.map(UTF8.decode).join();
  }

  Future<Map<String, List<Doc>>> _fetch() async {
    final urlPrefix = 'http${_https ? 's' : ''}://$_host';
    final indexUrl = '$urlPrefix/index.json';
    final Map index = await _getContents(indexUrl).then(JSON.decode);
    final List categories = index['categories'];
    return new Map.fromIterables(
        categories.map((Map c) => c['label']),
        await Future.wait(categories
          .map((Map c) => c['pages'])
          .map((List<Map> pages) {
          return Future.wait(pages.map((Map page) async {
            final markupUrl = '$urlPrefix/${page['location'] ?? page['url']}.html';
            final markup = await _getContents(markupUrl);
            return new Doc(page['title'], page['endpoint'] ?? page['url'], markup);
          }));
        }))
    );
  }
}
