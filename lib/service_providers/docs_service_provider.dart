part of app_services;

class DocsServiceProvider implements ServiceProvider {
  Future setUp(Application app) async {
    app.bind(DocRequester, ServerDocRequester);
  }
}
