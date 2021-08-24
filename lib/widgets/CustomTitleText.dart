import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;


  CustomTitle({@required this.text, this.size, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal
      ),
    );
  }
}


