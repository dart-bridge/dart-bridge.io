part of services;

class DocsServiceProvider extends ServiceProvider {
  Future setUp(DocsRepository docsRepo) async {
    print(await docsRepo.fetch());
  }
}
