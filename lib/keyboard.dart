import 'package:calculadora_flutter/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(
              text: 'AC',
              color: Color.fromARGB(255, 212, 212, 212),
            ),
            ButtonCustom(
              text: '+/_',
              color: Color.fromARGB(255, 212, 212, 212),
            ),
            ButtonCustom(
              text: '%',
              color: Color.fromARGB(255, 212, 212, 212),
            ),
            ButtonCustom(
              text: '/',
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(text: '7'),
            ButtonCustom(text: '8'),
            ButtonCustom(text: '9'),
            ButtonCustom(
              text: 'x',
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(text: '4'),
            ButtonCustom(text: '5'),
            ButtonCustom(text: '6'),
            ButtonCustom(
              text: '-',
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(text: '1'),
            ButtonCustom(text: '2'),
            ButtonCustom(text: '3'),
            ButtonCustom(
              text: '+',
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(
              text: '0',
              width: 160,
            ),
            ButtonCustom(text: ','),
            ButtonCustom(
              text: '=',
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
