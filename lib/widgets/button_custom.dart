import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String texButtom;
  const ButtonCustom({super.key, required this.texButtom});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Center(
        child: Text(
          texButtom,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
