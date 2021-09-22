import 'package:flutter/material.dart';
import 'package:tarvel_app/models/popular_destination.dart';
import 'package:tarvel_app/rating_icon.dart';
import 'package:tarvel_app/screen/location_detail_screen.dart';

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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        popularDestination.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
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
