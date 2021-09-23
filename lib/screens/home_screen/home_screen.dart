import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/body_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: const BodyHome(),
    );
  }
}
