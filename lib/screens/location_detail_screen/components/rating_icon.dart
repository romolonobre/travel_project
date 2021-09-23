import 'package:flutter/material.dart';

//This widget drwas our icon Reviews.
// we use the star icon

class RatingIcon extends StatelessWidget {
  double size;
  RatingIcon(this.size);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_outlined,
          color: Colors.amber[400],
          size: size,
        ),
        Icon(
          Icons.star_outlined,
          color: Colors.amber[400],
          size: size,
        ),
        Icon(
          Icons.star_outlined,
          color: Colors.amber[400],
          size: size,
        ),
        Icon(
          Icons.star_outlined,
          color: Colors.amber[400],
          size: size,
        ),
        Icon(
          Icons.star_outlined,
          color: Colors.amber[400],
          size: size,
        ),
      ],
    );
  }
}
