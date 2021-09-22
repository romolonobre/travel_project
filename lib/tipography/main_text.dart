import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const MainText(this.text,
      {this.color = Colors.grey,
      this.size = 15,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
        ));
  }
}
