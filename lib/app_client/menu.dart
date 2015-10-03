part of app;

void menu() {
  for (final toggler in querySelectorAll('.menu-toggle'))
    new Tapper(toggler).stream.listen(
        (_) => document.body.classes.toggle('menu-open'));
  for (final item in querySelectorAll('.menu-master a'))
    new Tapper(item).stream.listen(
        (_) => document.body.classes.remove('menu-open'));
}