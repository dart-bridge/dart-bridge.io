/// This is the shared library. Both the client and server side parts
/// of the application should import this library.
library app.shared;

import 'dart:async';

import 'package:bridge/bridge_shared.dart';

part 'shared_structures.dart';
part 'user.dart';
part 'routes.dart';
part 'docs/doc_requester.dart';
