part of app.shared;

typedef Future<String> DocGenerator();

class Routes {
  DocRequester _docs;

  Routes(DocRequester this._docs);

  Map<String, DocGenerator> __docs;

  Map<String, DocGenerator> get docs => __docs ??= {
    'index': () => _docs.get('index'),
    'core/overview': () => _docs.get('core/index'),
  };
}
