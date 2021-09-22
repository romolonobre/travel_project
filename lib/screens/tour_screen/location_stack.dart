import 'package:flutter/material.dart';
import 'package:tarvel_app/constants/colors.dart';
import 'package:tarvel_app/screens/location_detail_screen/components/rating_icon.dart';
import 'package:tarvel_app/screens/tour_screen/tour_detail_list.dart';

import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

import 'components/back_buttom.dart';
import 'components/image_header.dart';

class LocationStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageHeader(),
          Positioned(
            top: 40,
            left: 20,
            child: BackButtom(),
          ),
          Positioned(
            top: 240,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Heading(
                  'Trip To',
                  color: Colors.white70,
                  FontWeight: FontWeight.bold,
                  heading: Headings.h5,
                ),
                const SizedBox(height: 10),
                const Heading('Faroe Islands',
                    color: Colors.white,
                    FontWeight: FontWeight.bold,
                    heading: Headings.h1),
                const SizedBox(height: 10),
                RatingIcon(18),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.59,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading(
                        'Tour Details',
                        heading: Headings.h2,
                        FontWeight: FontWeight.w700,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: secondcolor, shape: BoxShape.circle),
                        child: Icon(
                          Icons.add,
                          color: maincolor,
                        ),
                      ),
                    ],
                  ),
                  MainText(
                    'Duration = 15 Days',
                    size: 14,
                    color: Colors.grey,
                  ),
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
