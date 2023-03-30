import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_item.dart';
import 'package:flutter/material.dart';

class Privilege extends StatefulWidget {
  const Privilege({super.key});

  @override
  State<Privilege> createState() => _PrivilegeState();
}

class _PrivilegeState extends State<Privilege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Hello World',
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            CustomCardItem(),
          ],
        ),
      ),
    );
  }
}
