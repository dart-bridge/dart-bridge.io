part of services;

class DocsServiceProvider extends ServiceProvider {
  Future setUp(Application app) async {
    if (Environment.isDevelopment) {
      DocRequester.host = 'localhost:1337';
      DocRequester.prefix = '';
      DocRequester.https = false;
    }
    app.bind(DocRequester, ServerDocRequester);
  }
}
