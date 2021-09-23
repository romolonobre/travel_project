import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarvel_app/constants/colors.dart';
import 'package:tarvel_app/models/tour_locations.dart';
import 'package:tarvel_app/typography/heading.dart';
import 'package:tarvel_app/typography/main_text.dart';

/// This widget draws the tour locations list
/// that display  how the tour will looks like.
/// We used listview.builder

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
    return SizedBox(
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
                child: const Icon(
                  Icons.circle,
                  size: 6,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Text(tourLocation.date),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const SizedBox(width: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  tourLocation.imageUrl,
                  height: 90,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(
                    tourLocation.title,
                    heading: Headings.h5,
                    color: Colors.black,
                    FontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 8),
                  MainText(
                    tourLocation.subtitle,
                    color: Colors.grey.shade400,
                    size: 12,
                  ),
                  const SizedBox(height: 15),
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
