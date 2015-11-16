part of app.shared;

/// Registers data structures that will be transferred through the [Tether].
void registerTransport() {
  registerViewTransport(); // bridge.view
  registerExceptionsTransport(); // bridge.exceptions
  registerTetherTransport(); // bridge.tether

  serializer.register('Doc', Doc,
      serialize: (Doc doc) => [doc.title, doc.url, doc.markup],
      deserialize: (List doc) => new Doc(doc[0], doc[1], doc[2])
  );
}