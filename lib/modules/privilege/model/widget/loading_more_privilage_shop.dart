import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingMorePrivilageShop extends StatelessWidget {
  const LoadingMorePrivilageShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Loading more',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          width: 10,
        ),
        const CupertinoActivityIndicator(),
      ],
    );
  }
}
