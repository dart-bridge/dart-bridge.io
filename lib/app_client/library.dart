/// This is the main client side application library.
library app;

import 'dart:html';
import 'dart:async';
import 'dart:js';

// The shared application library
import '../app_shared/library.dart';
export '../app_shared/library.dart';

import 'package:bridge/bridge_client.dart';

part 'router.dart';
part 'tapper.dart';
part 'anchor_events.dart';
part 'menu.dart';
