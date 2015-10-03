part of app.shared;

typedef Future<String> DocGenerator();

class Routes {
  DocRequester _docs;

  Routes(DocRequester this._docs);

  Map<String, List<DocRoute>> __docs;

  Map<String, List<DocRoute>> get docs => __docs ??= {
    'Getting Started': [
      new DocRoute('installation',
          'Installation', () => _docs.get('installation')),
    ],
    'bridge.core': [
      new DocRoute('bridge.core',
          'bridge.core', () => _docs.get('core/index')),
    ],
  };
}

abstract class Route {
  final String title;
  final String url;

  const Route(String this.url, String this.title);
}

class DocRoute extends Route {
  final DocGenerator doc;

  String get url => '/docs/${super.url}';

  const DocRoute(String url, String title, DocGenerator this.doc)
      : super(url, title);
}