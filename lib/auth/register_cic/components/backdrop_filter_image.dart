import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFiltterImage extends StatelessWidget {
  final Widget? child;
  const BackDropFiltterImage({
    super.key,
    this.child,
    required this.sigmaX,
    required this.sigmaY,
  });

  final double sigmaX;
  final double sigmaY;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: sigmaX,
        sigmaY: sigmaY,
        tileMode: TileMode.repeated,
      ),
      child: child ?? Container(),
    );
  }
}
