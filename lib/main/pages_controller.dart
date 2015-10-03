part of main;

/// This is a controller. You can inject classes just by declaring the
/// type of an argument. You can do this both in the constructor and
/// in the methods.
class PagesController {
  index() {
    return template('index').withScript('home')
      ..area = 'home';
  }

  docs(Routes routes) {
    return template('docs').withScript('docs')
      ..area = 'docs'
      ..docRoutes = routes.docs;
  }

  resources() {
    return template('resources').withScript('generic')
      ..area = 'resources';
  }
}
