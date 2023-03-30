import 'package:flutter/material.dart';

class MyMvpScreen extends StatefulWidget {
  const MyMvpScreen({super.key});

  @override
  State<MyMvpScreen> createState() => _MyMvpScreenState();
}

class _MyMvpScreenState extends State<MyMvpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVP')),
    );
  }
}
