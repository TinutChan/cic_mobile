import 'package:cic_mobile/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AllShopCategory extends StatelessWidget {
  const AllShopCategory({super.key, this.id});
  final String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWhiteBgColor(),
    );
  }
}
