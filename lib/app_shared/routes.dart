part of app.shared;

typedef Future<String> DocGenerator();

class Routes {
  final DocRequester _docs;

  Routes(DocRequester this._docs);

  Map<String, List<DocRoute>> __docs;

  Map<String, List<DocRoute>> get docs => __docs ??= {
    'Getting Started': [
      new DocRoute('installation',
          'Installation', () => _docs.get('installation')),
    ],
    'bridge.core': [
      new DocRoute('bridge.core',
          'Overview', () => _docs.get('core/index')),
    ],
    'bridge.cli': [
      new DocRoute('bridge.cli',
          'Overview', () => _docs.get('cli/index')),
    ],
    'bridge.http': [
      new DocRoute('bridge.http',
          'Overview', () => _docs.get('http/index')),
    ],
    'bridge.database': [
      new DocRoute('bridge.database',
          'Overview', () => _docs.get('database/index')),
    ],
    'bridge.tether': [
      new DocRoute('bridge.tether',
          'Overview', () => _docs.get('tether/index')),
    ],
    'bridge.view': [
      new DocRoute('bridge.view',
          'Overview', () => _docs.get('view/index')),
    ],
    'bridge.transport': [
      new DocRoute('bridge.transport',
          'Overview', () => _docs.get('transport/index')),
    ],
    'bridge.events': [
      new DocRoute('bridge.events',
          'Overview', () => _docs.get('events/index')),
    ],
    'bridge.validation': [
      new DocRoute('bridge.validation',
          'Overview', () => _docs.get('validation/index')),
    ],
    'bridge.exceptions': [
      new DocRoute('bridge.exceptions',
          'Overview', () => _docs.get('exceptions/index')),
    ],
  };
}

class Route {
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