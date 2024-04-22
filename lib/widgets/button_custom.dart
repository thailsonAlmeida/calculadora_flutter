import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final Color? color;
  final double? width;

  const ButtonCustom({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.width = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 3),
                blurRadius: 15),
          ]),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
