import 'package:flutter/material.dart';

class CustomPopUpmenuBotton extends StatelessWidget {
  const CustomPopUpmenuBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(
            child: Text('Preview'),
          ),
          const PopupMenuItem(
            child: Text('Share'),
          ),
          const PopupMenuItem(
            child: Text('Get Link'),
          ),
          const PopupMenuItem(
            child: Text('Remove'),
          ),
        ];
      },
    );
  }
}
