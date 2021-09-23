import 'package:flutter/material.dart';

// This Widget draws a text with
// 2 different sizes and colors

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'From',
            style: TextStyle(
              color: Colors.grey.shade300,
            ),
          ),
          const TextSpan(
            text: ' \$5000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
