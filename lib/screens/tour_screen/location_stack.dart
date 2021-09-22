import 'package:flutter/material.dart';
import 'package:tarvel_app/constants/colors.dart';
import 'package:tarvel_app/screens/location_detail_screen/components/rating_icon.dart';
import 'package:tarvel_app/screens/tour_screen/tour_detail_list.dart';

import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

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
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trip To',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Faroe Islands',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
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



/*Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                child: Image.network(
                  'https://images.unsplash.com/photo-1530767467615-cf1dd9f2c06e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80',
                  height: MediaQuery.of(context).size.height * 0.46,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 240,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trip To',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Faroe Islands',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    RatingIcon(18)
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
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
        ],
      ),
    );

select picture(int number, string nome){
  retun
}

*/



