import 'package:flutter/material.dart';

/// This Widget drawns a circle buttom,
/// as a global widget we can use it
/// anywhere in our application. We have
/// to specify what icon we want display.
///
///

class BackButtom extends StatelessWidget {
  BackButtom({required this.icon});

  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white54.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}
