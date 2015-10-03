part of app;

void menu() {
  for (final toggler in querySelectorAll('.menu-toggle'))
    new Tapper(toggler).stream.listen(
        (_) => document.body.classes.toggle('menu-open'));
  final menuItems = querySelectorAll('.menu-master a');
  for (final item in menuItems)
    new Tapper(item).stream.listen((_) {
      menuItems.forEach((e) => e.parent.classes.remove('active'));
      item.parent.classes.add('active');
      document.body.classes.remove('menu-open');
    });
  menuItems
      .where(
      (AnchorElement e) => '${e.href}' == '${window.location}')
      .forEach((e) => e.parent.classes.add('active'));
}