import 'package:flutter/material.dart';
import 'package:flutter_application_1/apptext.dart';  // Assuming this is used for text styling

class AppButton extends StatelessWidget {
  final Color color;
  final String? text;
  final Color backgroundColor;
  final double size;
  final double textsize;
  final Color borderColor;


  AppButton({
    Key? key,
    
    this.text,
    required this.size,
    required this.textsize,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Center(
        child: Text(
                text ?? '',  
                style: TextStyle(
                  color: color,  
                  fontSize: textsize,
                ),
              ),
      ),
    );
  }
}
