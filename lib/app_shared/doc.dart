part of app.shared;

class Doc {
  final String title;
  final String url;
  final String markup;

  const Doc(this.title, this.url, this.markup);

  String toString() => 'Doc($title: /docs/$url)';
}
