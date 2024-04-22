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
      width: double.infinity,
      height: 110,
      decoration: const BoxDecoration(color: Colors.green),
      child: const Text(
        '0', //deixar texto responsivo no screen
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 80),
      ),
    );
  }
}
