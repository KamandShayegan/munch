import 'package:flutter/material.dart';

class H2Text extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const H2Text(
      {Key? key, required this.text, this.color = Colors.black54, this.size = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(color: color, fontSize: size),
    );
  }
}
