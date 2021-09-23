import 'package:flutter/material.dart';

class BackButtom extends StatelessWidget {
  BackButtom({required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: () {}, icon: icon));
  }
}
