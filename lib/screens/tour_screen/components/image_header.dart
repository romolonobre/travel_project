import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.unsplash.com/photo-1530767467615-cf1dd9f2c06e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80',
      height: MediaQuery.of(context).size.height * 0.46,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
