import 'package:cic_mobile/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class FilterStorePrivilage extends StatelessWidget {
  const FilterStorePrivilage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWhiteBgColor(title: 'Filter'),
    );
  }
}
