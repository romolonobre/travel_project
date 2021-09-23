import 'package:flutter/material.dart';
import 'package:tarvel_app/models/popular_destination.dart';
import 'package:tarvel_app/screens/location_detail_screen/components/rating_icon.dart';

import 'package:tarvel_app/screens/location_detail_screen/location_detail_screen.dart';

/// This Widget draws a listview with
/// all popular detinations cards to display
/// on $HomeScreen.

class PopulaDestinationListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: populardestinationslist.length,
        itemBuilder: (context, index) {
          return PopularDestinationCard(populardestinationslist[index]);
        },
      ),
    );
  }
}

/// This Widget drwas a card with the
/// destinations details

class PopularDestinationCard extends StatelessWidget {
  final PopularDestination popularDestination;
  PopularDestinationCard(this.popularDestination);

  @override
  Widget build(BuildContext context) {
    void selectDestination() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return LOcationDetailScreen();
          },
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: GestureDetector(
                    onTap: () => selectDestination(),

                    // Image value

                    child: Image.network(
                      popularDestination.imageUrl,
                      height: 180,
                      width: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            //SizedBox to give space between the widgets
            const SizedBox(height: 10),

            // We used Padding/Column/Row to
            // organize the widgets

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      //
                      //Text Value

                      Text(
                        popularDestination.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),

                      // Icon Value

                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),

                  //SizedBox to give space between the widgets
                  const SizedBox(height: 10),

                  // We use RatingIcon to drwas the
                  //icon reviews for each card

                  RatingIcon(20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
