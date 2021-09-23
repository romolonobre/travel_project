import 'package:flutter/material.dart';
import 'package:tarvel_app/screens/location_detail_screen/components/rating_icon.dart';

import 'package:tarvel_app/screens/tour_screen/body_tour.dart';
import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

import '../../../global-Widgets/back_buttom.dart';
import 'book_trip_buttom.dart';
import 'custom_rich_text.dart';

class BodyLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const BackButtom(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 300,
            ),
            Row(
              children: [
                RatingIcon(20),
                const SizedBox(width: 6),
                const MainText(
                  '5.0',
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 6),
            MainText(
              '500 Reviews',
              color: Colors.grey.shade400,
              size: 12,
            ),
            const SizedBox(height: 40),
            const Heading(
              'Faroe Islands',
              color: Colors.white,
              heading: Headings.h1,
              FontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 6),
            MainText(
              'The  Faroe  Islands  Was  Doing \nHomespun  Way Before  it  Became  Hip\nWith  Its Curious  Food  Scene  And\nDown-Home  Aestetic',
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                CustomRichText(),
              ],
            ),
            const SizedBox(height: 15),
            BookTripButtom(),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return BodyTour();
                      },
                    ),
                  );
                },
                child: const MainText(
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
