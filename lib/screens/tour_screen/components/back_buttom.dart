import 'package:flutter/material.dart';

class BackButtom extends StatelessWidget {
  const BackButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(color: Colors.grey.shade400, shape: BoxShape.circle),
      child: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    );
  }
}
