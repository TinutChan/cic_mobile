import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  final int? milliseconds;
  final VoidCallback? action;
  Timer? timer;

  Debouncer({this.action, this.timer, this.milliseconds});

  run(VoidCallback action) {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}
