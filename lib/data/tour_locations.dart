import 'package:flutter/material.dart';

class TourLocation {
  final String title;
  final String subtitle;
  final String km;
  final String imageUrl;

  final String date;

  TourLocation(
      {required this.title,
      required this.subtitle,
      required this.km,
      required this.imageUrl,
      required this.date});
}

List<TourLocation> locationslist = [
  TourLocation(
      title: 'Gjogv, Eyuston',
      subtitle: 'Beautiful Little Town',
      km: '150 Km',
      date: '17.9.2021',
      imageUrl:
          'https://images.unsplash.com/photo-1606172928698-6cceaeef5db8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80'),
  TourLocation(
      title: 'Gjogv Beach',
      subtitle: 'Beautiful Beach ',
      km: '203 Km',
      date: '21.9.2021',
      imageUrl:
          'https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80'),
  TourLocation(
      title: 'Hidinh Montagne',
      subtitle: 'Sky diving  ',
      km: '342 Km',
      date: '24.9.2021',
      imageUrl:
          'https://images.unsplash.com/photo-1623678251943-de9e9decfee9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=664&q=80')
];
