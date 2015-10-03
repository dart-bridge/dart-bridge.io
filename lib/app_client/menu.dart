part of app;

final _menuItems = querySelectorAll('.menu-master a');

void menu() {
  for (final toggler in querySelectorAll('.menu-toggle'))
    new Tapper(toggler).stream.listen(
        (_) => document.body.classes.toggle('menu-open'));
  for (final item in _menuItems)
    new Tapper(item).stream.listen((_) {
      _clearMenuActiveState();
      item.parent.classes.add('active');
      document.body.classes.remove('menu-open');
    });
  window.onPopState.listen((_) {
    _clearMenuActiveState();
    _setMenuActiveState();
  });
  _setMenuActiveState();
}

_setMenuActiveState() {
  _menuItems
      .where(
      (AnchorElement e) => '${e.href}' == '${window.location}')
      .forEach((e) => e.parent.classes.add('active'));
}

_clearMenuActiveState() {
  _menuItems.forEach((e) => e.parent.classes.remove('active'));
}