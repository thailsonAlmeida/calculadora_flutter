import 'package:calculadora_flutter/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(
              text: 'AC',
              color: const Color.fromARGB(255, 212, 212, 212),
              onTap: () => print('AC'),
            ),
            ButtonCustom(
              text: '+/_',
              color: const Color.fromARGB(255, 212, 212, 212),
              onTap: () => print('+/_'),
            ),
            ButtonCustom(
              text: '%',
              color: const Color.fromARGB(255, 212, 212, 212),
              onTap: () => print('%'),
            ),
            ButtonCustom(
              text: '/',
              color: Colors.orange,
              onTap: () => print('/'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(text: '7', onTap: () => print('7')),
            ButtonCustom(text: '8', onTap: () => print('8')),
            ButtonCustom(text: '9', onTap: () => print('9')),
            ButtonCustom(
              text: 'x',
              color: Colors.orange,
              onTap: () => print('x'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(text: '4', onTap: () => print('4')),
            ButtonCustom(text: '5', onTap: () => print('5')),
            ButtonCustom(text: '6', onTap: () => print('6')),
            ButtonCustom(
              text: '-',
              color: Colors.orange,
              onTap: () => print('-'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(text: '1', onTap: () => print('1')),
            ButtonCustom(text: '2', onTap: () => print('2')),
            ButtonCustom(text: '3', onTap: () => print('3')),
            ButtonCustom(
              text: '+',
              color: Colors.orange,
              onTap: () => print('+'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonCustom(
              text: '0',
              width: 160,
              onTap: () {
                '0';
              },
            ),
            ButtonCustom(
              text: ',',
              onTap: () => '',
            ),
            ButtonCustom(
              text: '=',
              color: Colors.orange,
              onTap: () => print('='),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
