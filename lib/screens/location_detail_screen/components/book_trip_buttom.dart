import 'package:flutter/material.dart';

///This Widget draws a buttom to
///book the trip, has a text value and an icon value

class BookTripButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Book Trip',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w800,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: 20,
          ),
        ],
      ),
    );
  }
}
