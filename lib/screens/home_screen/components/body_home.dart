import 'package:flutter/material.dart';
import 'package:tarvel_app/typography/heading.dart';

import 'categories_list_view.dart';
import 'popular_destination_list_view.dart';
import 'search_bar_widget.dart';
import 'top_bar_widget.dart';

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
        TopBarWidget(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Heading(
            'Discover',
            heading: Headings.h1,
            color: Colors.black,
            FontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 15),
        SearchBarWidget(),
        const SizedBox(height: 15),
        CategoriesListView(),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Heading(
                'Popular Destinations',
                heading: Headings.h5,
                color: Colors.black,
                FontWeight: FontWeight.w800,
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('See All'),
            ),
          ],
        ),
        const SizedBox(height: 10),
        PopulaDestinationListView()
      ],
    );
  }
}