import 'package:flutter/material.dart';
import 'package:tarvel_app/typography/heading.dart';

import 'categories_list_view.dart';
import 'popular_destination_list_view.dart';
import 'search_bar_widget.dart';
import 'top_bar_widget.dart';

/// This is the body widget of $HomeScreen.
/// We use to organize the widgets on the
/// screen
///

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 70),

        // This Widget draws an 'appbar'.
        // we have a Text "Hi Romolo" and a
        // CicleAavtar with the profile image
        //
        TopBarWidget(),

        //SizedBox to give space between the widgets

        const SizedBox(height: 20),

        // We use Heading widget to display a text "Discover"

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Heading(
            'Discover',
            heading: Headings.h1,
            color: Colors.black,
            FontWeight: FontWeight.w800,
          ),
        ),

        //SizedBox to give space between the widgets

        const SizedBox(height: 15),

        // This Widget draws the Seacrh bar

        SearchBarWidget(),

        //SizedBox to give space between the widgets

        const SizedBox(height: 15),

        // This Widget draws our categoires such as
        // "countries" "sights" "tours"...
        CategoriesListView(),

        //SizedBox to give space between the widgets
        const SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              // We use Heading widget to drwas a text "Popular Destinations"

              child: Heading(
                'Popular Destinations',
                heading: Headings.h5,
                color: Colors.black,
                FontWeight: FontWeight.w800,
              ),
            ),

            // Buttom  - SEE ALL -

            FlatButton(
              onPressed: () {},
              child: Text('See All'),
            ),
          ],
        ),

        //SizedBox to give space between the widgets
        const SizedBox(height: 10),

        // This Widget draws a list view
        // with a card for each popular
        // destination

        PopulaDestinationListView()
      ],
    );
  }
}
