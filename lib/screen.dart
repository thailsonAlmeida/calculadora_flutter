import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 110,
      child: Text(
        '3', //deixar texto responsivo no screen
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 80),
      ),
    );
  }
}
