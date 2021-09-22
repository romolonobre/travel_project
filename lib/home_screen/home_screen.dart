import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/categories_list_view.dart';
import 'components/popular_destination_list_view.dart';

import 'components/search_bar_widget.dart';

import 'package:tarvel_app/tipography/heading.dart';

import 'components/top_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
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
      ),
    );
  }
}
