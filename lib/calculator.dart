import 'package:calculadora_flutter/screen.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Column(
          children: <Widget>[
            SizedBox(height: 220),
            Screen(),
          ],
        ),
      ),
    );
  }
}
