import 'package:flutter/material.dart';
import 'package:tarvel_app/constants/colors.dart';
import 'package:tarvel_app/global-Widgets/back_buttom.dart';
import 'package:tarvel_app/screens/location_detail_screen/components/rating_icon.dart';
import 'package:tarvel_app/screens/tour_screen/components/tour_detail_list.dart';

import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

import 'components/add_buttom.dart';

import 'components/image_header.dart';

/// This is the body widget of $TourScreen
/// We use to organize the widgets on the
/// screen. We used Stack to overlap the widgets
///

class BodyTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //
          // This Widget draws the image header

          const ImageHeader(),

          // We used Positioned to position
          // our widgtes exactly in the right place
          Positioned(
            top: 40,
            left: 20,

            // BackButtom Value

            child: BackButtom(
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
          ),

          // We used Positioned to position
          // our widgtes exactly in the right place
          Positioned(
            top: 240,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                //Text Value
                const Heading(
                  'Trip To',
                  color: Colors.white70,
                  FontWeight: FontWeight.bold,
                  heading: Headings.h5,
                ),
                const SizedBox(height: 10),

                // Heading Value

                const Heading('Faroe Islands',
                    color: Colors.white,
                    FontWeight: FontWeight.bold,
                    heading: Headings.h1),
                const SizedBox(height: 10),
                RatingIcon(18),
              ],
            ),
          ),

          // We used Align to position
          // our widgtes exactly in the right place.
          // Container use MediaQuery to get 59% of
          // the screen. We used Borderadius top left
          // and top right to give circular border to
          // the top of the container.

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.59,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),

              // We used Column/Row to organize
              //the widgets on the screen
              //

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //
                      // Heading Value

                      Heading(
                        'Tour Details',
                        heading: Headings.h2,
                        FontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      AddButtom(),
                    ],
                  ),

                  //Main Text value

                  const MainText(
                    'Duration = 15 Days',
                    size: 14,
                    color: Colors.grey,
                  ),

                  // Tour Derials list Value

                  TourDetailList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
