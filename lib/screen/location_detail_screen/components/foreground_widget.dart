import 'package:flutter/material.dart';
import 'package:tarvel_app/screen/location_detail_screen/components/book_trip_buttom.dart';
import 'package:tarvel_app/location_stack.dart';

import 'package:tarvel_app/screen/location_detail_screen/components/rating_icon.dart';
import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

class ForegroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void selectLocation() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return LocationStack();
          },
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
            ),
            Row(
              children: [
                RatingIcon(20),
                SizedBox(width: 6),
                MainText(
                  '5.0',
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 6),
            MainText(
              '500 Reviews',
              color: Colors.grey.shade400,
              size: 12,
            ),
            SizedBox(height: 40),
            Heading(
              'Faroe Islands',
              color: Colors.white,
              heading: Headings.h1,
              FontWeight: FontWeight.bold,
            ),
            SizedBox(height: 6),
            MainText(
              'The  Faroe  Islands  Was  Doing \nHomespun  Way Before  it  Became  Hip\nWith  Its Curious  Food  Scene  And\nDown-Home  Aestetic',
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                MainText(
                  'From',
                  color: Colors.grey.shade300,
                ),
                SizedBox(width: 8),
                Heading(
                  '\$5000',
                  FontWeight: FontWeight.bold,
                  heading: Headings.h2,
                ),
              ],
            ),
            SizedBox(height: 15),
            BookTripButtom(),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () => selectLocation(),
                child: MainText(
                  'More Details',
                  fontWeight: FontWeight.bold,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
