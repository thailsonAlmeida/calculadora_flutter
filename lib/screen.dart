import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        '0',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 80),
      ),
      decoration: const BoxDecoration(color: Colors.amber),
      width: double.infinity,
      height: 110,
    );
  }
}
