import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tarvel_app/constants/colors.dart';
import 'package:tarvel_app/models/category.dart';

/// This Widget drwas a listview with
/// the categories cards to display
/// on $HomeScreen. We used Svg to diplay
/// the icons

class CategoriesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorieslist.length,
        itemBuilder: (context, index) {
          return CategoriesCard(categorieslist[index]);
        },
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  Category category;
  CategoriesCard(this.category);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        height: 140,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              // We use a container to draws the
              // light green circle with the svg icon

              Container(
                height: 60,
                width: 60,
                decoration:
                    BoxDecoration(color: secondcolor1, shape: BoxShape.circle),
                child: Center(
                  // Svg value

                  child: SvgPicture.asset(
                    category.iconPath,
                    height: 36,
                    width: 36,
                    fit: BoxFit.scaleDown,
                    color: maincolor1,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Text Value

              Text(
                category.category,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
