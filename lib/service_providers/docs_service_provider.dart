part of services;

class DocsServiceProvider extends ServiceProvider {
  Future setUp(Application app, DocsRepository docsRepo) async {
    app.singleton(docsRepo);
  }
}
