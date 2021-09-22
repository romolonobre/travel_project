import 'package:flutter/material.dart';

class PopularDestination {
  final String imageUrl;
  final String title;

  PopularDestination({
    required this.imageUrl,
    required this.title,
  });
}

List<PopularDestination> populardestinationslist = [
  PopularDestination(
    imageUrl:
        'https://images.unsplash.com/photo-1506457469115-39b5cced7b7a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    title: 'Faroe Island',
  ),
  PopularDestination(
    imageUrl:
        'https://images.unsplash.com/photo-1528837516156-0a7225a43641?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1491&q=80',
    title: 'Iceland',
  ),
  PopularDestination(
    imageUrl:
        'https://images.unsplash.com/photo-1527004013197-933c4bb611b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
    title: 'Norway',
  ),
];
