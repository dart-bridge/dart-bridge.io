part of app;

void anchorEvents(Router router) {
  querySelectorAll('a[href]').forEach((AnchorElement a) {
    a.onClick.listen((_) => _.preventDefault());
    new Tapper(a).stream.listen((_) {
       router.navigate(a.href);
    });
  });
}