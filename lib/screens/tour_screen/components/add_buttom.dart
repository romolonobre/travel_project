import 'package:flutter/material.dart';
import 'package:tarvel_app/constants/colors.dart';

class AddButtom extends StatelessWidget {
  const AddButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: secondcolor, shape: BoxShape.circle),
      child: Icon(
        Icons.add,
        color: maincolor,
      ),
    );
  }
}
