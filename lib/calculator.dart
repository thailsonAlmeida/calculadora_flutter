import 'package:calculadora_flutter/keyboard.dart';
import 'package:calculadora_flutter/screen.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
            children: <Widget>[
              SizedBox(height: 160),
              Screen(),
              Keyboard(),
            ],
          ),
        ),
      ),
    );
  }
}
