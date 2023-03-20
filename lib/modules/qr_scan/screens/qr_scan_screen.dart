import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QRScanScreen extends StatelessWidget {
  const QRScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            context.go('/home');
          },
        ),
      ),
      body: const Center(
        child: Text(
          'QR',
        ),
      ),
    );
  }
}
