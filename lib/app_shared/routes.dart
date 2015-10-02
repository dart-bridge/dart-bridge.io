part of app.shared;

typedef Future<String> DocGenerator();

class Routes {
  DocRequester _docs;

  Routes(DocRequester this._docs);

  List<DocRoute> __docs;

  List<DocRoute> get docs => __docs ??= [
    new DocRoute('installation', 'Installation', () => _docs.get('installation')),
    new DocRoute('core', 'bridge.core', () => _docs.get('core/index')),
  ];
}

abstract class Route {
  final String title;
  final String url;

  const Route(String this.url, String this.title);
}

class DocRoute extends Route {
  final DocGenerator doc;
  String get url => '/docs/${super.url}';

  const DocRoute(String url, String title, DocGenerator this.doc) : super(url, title);
}