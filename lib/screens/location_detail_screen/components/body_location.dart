import 'package:flutter/material.dart';
import 'package:tarvel_app/screens/location_detail_screen/components/rating_icon.dart';

import 'package:tarvel_app/screens/tour_screen/body_tour.dart';
import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

import '../../../global-Widgets/back_buttom.dart';
import 'book_trip_buttom.dart';
import 'custom_rich_text.dart';

/// This is the body widget of $Location Detail S
/// We use to organize the widgets on the
/// screen
///

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

          // This Widget draws the backbuttom that
          // allow to go to the previews screen

          leading: BackButtom(
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 300,
            ),
            Row(
              children: [
                //
                // We use RatingIcon to drwas the
                //icon reviews

                RatingIcon(20),
                const SizedBox(width: 6),

                // Main Text Value

                const MainText(
                  '5.0',
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 6),

            // Main Text Value

            MainText(
              '500 Reviews',
              color: Colors.grey.shade400,
              size: 12,
            ),
            const SizedBox(height: 40),

            // Heading Value

            const Heading(
              'Faroe Islands',
              color: Colors.white,
              heading: Headings.h1,
              FontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 6),

            // Main Text Value

            MainText(
              'The  Faroe  Islands  Was  Doing \nHomespun  Way Before  it  Became  Hip\nWith  Its Curious  Food  Scene  And\nDown-Home  Aestetic',
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 40),

            Row(
              children: const [
                //
                // This Widget draws a text with
                // 2 different sizes and colors

                CustomRichText(),
              ],
            ),
            const SizedBox(height: 15),

            // This Widget draws a buttom to
            // book the trip and take to the next
            //screen

            BookTripButtom(),
            const SizedBox(height: 40),

            // We use InleWell to allow the user to tap
            // and go the the next screen with navigator

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
                child:

                    //Text Buttom Value

                    const MainText(
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
