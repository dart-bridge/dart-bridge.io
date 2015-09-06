library app.shared;
/// This is the shared library. Both the client and server side parts
/// of the application should import this library. This is the home
/// for all entities being shared by the two sides of the [Tether] connection.

import 'package:bridge/src/tether/library_shared.dart';
import 'package:bridge/src/view/shared/library.dart';
import 'dart:async';

part 'shared_structures.dart';
part 'routes.dart';
part 'docs/doc_requester.dart';
