import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:streaming_app/constants.dart';

import '../data.dart';
import 'BotNavIcons.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
     color: white.withOpacity(.05),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: white.withOpacity(.05),
              width: 1.0,
            ),
          ),
        ),
        height: 70,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                print('object1');
              },
              child: Image.asset(
                'assets/icons/home.png',
              ),
            ),
            InkWell(
              onTap: () {
                print('object2');
              },
              child: Image.asset(
                'assets/icons/play-tv.png',
              ),
            ),
            InkWell(
              onTap: null,
              child: Image.asset(
                'assets/icons/blank.png',
              ),
            ),
            InkWell(
              onTap: () {
                print('object4');
              },
              child: Image.asset(
                'assets/icons/categories.png',
              ),
            ),
            InkWell(
              onTap: () {
                print('object5');
              },
              child: Image.asset(
                'assets/icons/download.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
