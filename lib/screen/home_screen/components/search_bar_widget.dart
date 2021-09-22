import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tarvel_app/constants/colors.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          margin: EdgeInsets.all(12),
          child: TextField(
            decoration: InputDecoration(
              icon: SvgPicture.asset(
                'Assets/icons/search.svg',
                height: 28,
                width: 25,
                fit: BoxFit.contain,
                color: maincolor1,
              ),
              hintText: 'Search For Places',
              hintStyle: TextStyle(fontSize: 17, color: Colors.grey.shade400),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
