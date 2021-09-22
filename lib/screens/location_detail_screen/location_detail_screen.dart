import 'package:flutter/material.dart';

import 'components/foreground_widget.dart';

class LOcationDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Hero(
          tag: 'tag',
          child: Image.network(
            'https://images.unsplash.com/photo-1526463686547-a575473243fe?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTIyfHxmYXJvZSUyMGlzbGFuZHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
            height: hight,
            fit: BoxFit.cover,
          ),
        ),
        ForegroundWidget(),
      ],
    );
  }
}
