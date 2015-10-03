import 'dart:html';
import 'dart:async';
import 'package:app/client.dart';

class HomePresentation {
  final List<Element> _sections = querySelectorAll('section').toList();

  HomePresentation() {
    window.onScroll.listen((_) => _onScroll());
    new Future.delayed(const Duration(milliseconds: 100)).then((_) => _onScroll());
  }

  _shouldntShow(Element section) {
    return section.getBoundingClientRect().top > window.innerHeight / 3 * 2;
  }

  _isntScrolledToBottom() {
    return window.innerHeight + document.body.scrollTop < document.body.offsetHeight;
  }

  _onScroll() {
    for (final section in _sections.toList()) {
      if (_isntScrolledToBottom() && _shouldntShow(section)) continue;
      section.classes.add('shown');
      _sections.remove(section);
    }
  }
}

main() {
  new HomePresentation();
  anchorEvents(new Router());
  menu();
}