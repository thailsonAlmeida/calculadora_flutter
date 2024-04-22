import 'package:calculadora_flutter/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonCustom(texButtom: 'AC'),
              ButtonCustom(texButtom: ''),
              ButtonCustom(texButtom: '<-'),
              ButtonCustom(texButtom: '/'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonCustom(texButtom: '7'),
              ButtonCustom(texButtom: '8'),
              ButtonCustom(texButtom: '9'),
              ButtonCustom(texButtom: 'x'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonCustom(texButtom: '4'),
              ButtonCustom(texButtom: '5'),
              ButtonCustom(texButtom: '6'),
              ButtonCustom(texButtom: '-'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonCustom(texButtom: '1'),
              ButtonCustom(texButtom: '2'),
              ButtonCustom(texButtom: '3'),
              ButtonCustom(texButtom: '+'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonCustom(texButtom: '0'),
              ButtonCustom(texButtom: ''),
              ButtonCustom(texButtom: ','),
              ButtonCustom(texButtom: '='),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
