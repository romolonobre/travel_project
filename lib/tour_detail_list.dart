import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarvel_app/color/colors.dart';
import 'package:tarvel_app/models/tour_locations.dart';
import 'package:tarvel_app/tipography/heading.dart';
import 'package:tarvel_app/tipography/main_text.dart';

class TourDetailList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: locationslist.length,
          itemBuilder: (context, index) {
            return TourLocactionsCard(
              locationslist[index],
            );
          },
        ),
      ),
    );
  }
}

class TourLocactionsCard extends StatelessWidget {
  TourLocation tourLocation;
  TourLocactionsCard(this.tourLocation);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: maincolor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.circle,
                  size: 6,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Text(tourLocation.date),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  tourLocation.imageUrl,
                  height: 90,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(
                    tourLocation.title,
                    heading: Headings.h5,
                    color: Colors.black,
                    FontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 8),
                  MainText(
                    tourLocation.subtitle,
                    color: Colors.grey.shade400,
                    size: 12,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: maincolor,
                        size: 17,
                      ),
                      Text(
                        tourLocation.km,
                        style: TextStyle(
                            color: maincolor, fontWeight: FontWeight.w800),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
