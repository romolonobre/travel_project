import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Headings {
  h1,
  h2,
  h3,
  h4,
  h5,
}

class Heading extends StatelessWidget {
  final String text;
  final Color color;
  final Headings heading;
  final FontWeight;
  

  const Heading(
    this.text, {
    this.color = Colors.white,
    this.heading = Headings.h1,
    this.FontWeight,
    
  });

  @override
  Widget build(BuildContext context) {
    double size = 20;
    switch (heading) {
      case (Headings.h1):
        size = 30;
        break;
      case (Headings.h2):
        size = 24;
        break;
      case (Headings.h3):
        size = 22;
        break;
      case (Headings.h4):
        size = 20;
        break;
      case (Headings.h5):
        size = 18;
        break;
      default:
        size = 20;
    }

    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight,
      ),
    );
  }
}
