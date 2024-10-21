import 'package:flutter/material.dart';

class Apptext extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  Apptext({Key? key,
  required this.size,
  required this.text,
   this.color=Colors.white,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize:size,
        


      ),

    );
  }
}