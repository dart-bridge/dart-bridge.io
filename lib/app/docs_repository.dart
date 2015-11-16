part of app;

class DocsRepository {
  final HttpClient _http;
  final String _host;
  final bool _https;

  DocsRepository(this._http, Config config)
    : _host = config('docs.host'),
      _https = config('docs.https');

  Future<Map<String, List<Doc>>> fetch() async {
    final request = await _http.getUrl(
        Uri.parse('http${_https ? 's' : ''}://$_host/index.json')
    );

    final response = await request.close();

    final Map index = await response.map(UTF8.decode).join().then(JSON.decode);
    final List categories = index['categories'];
    return new Map.fromIterables(
        categories.map((Map c) => c['label']),
        categories
          .map((Map c) => c['pages'])
          .map((List<Map> pages) {
          return pages.map((Map page) {
            final markup = '';
            return new Doc(page['title'], page['endpoint'] ?? page['url'], markup);
          });
        })
    );
  }
}
