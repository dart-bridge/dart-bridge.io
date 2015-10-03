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
    return redirect('docs/installation');
  }

  download() {
    return template('download').withScript('generic')
      ..headerColor = 'red'
      ..area = 'download';
  }

  resources() {
    return template('resources').withScript('generic')
      ..headerColor = 'red'
      ..area = 'resources'
      ..menu = {
        'Category': [
          const Route('#hej', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
          const Route('/', 'Home'),
        ]
      };
  }
}
