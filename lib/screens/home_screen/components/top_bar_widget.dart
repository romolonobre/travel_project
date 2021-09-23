import 'package:flutter/material.dart';
import 'package:tarvel_app/constants/colors.dart';
import 'package:tarvel_app/typography/main_text.dart';

// This Widget draws an 'appbar'.
// we have a Text "Hi Romolo" and a
// CicleAavtar with the profile image
//

class TopBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          // Text value

          MainText(
            'Hi Romolo!',
            color: maincolor1,
            size: 22,
            fontWeight: FontWeight.w800,
          ),

          // Profile image Value

          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://scontent-lhr8-2.xx.fbcdn.net/v/t1.18169-9/23032400_1906668446040415_1604434074887200625_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=GLllhoi_pccAX94wgRA&_nc_ht=scontent-lhr8-2.xx&oh=962dadc0726c559493530056cbde2956&oe=616FDB52',
              ),
              radius: 40,
            ),
          ),
        ],
      ),
    );
  }
}
