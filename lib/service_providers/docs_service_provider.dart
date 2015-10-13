part of services;

class DocsServiceProvider extends ServiceProvider {
  Future setUp(Application app) async {
    app.bind(DocRequester, ServerDocRequester);
  }
}
