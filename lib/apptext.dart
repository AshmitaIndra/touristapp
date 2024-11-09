import 'package:flutter/material.dart';
class Apptext extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const Apptext({
    required this.size,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color, 
      ),
    );
  }
}
