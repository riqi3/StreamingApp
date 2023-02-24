import 'package:flutter/material.dart';
import 'package:widget_mask/widget_mask.dart';

import '../constants.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({
    super.key,
    required this.list,
  });

  final List<Map<String, dynamic>>  list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: thumbnailHeight,
      child: ListView.builder(
        shrinkWrap: true,
        physics:BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          String mask;
          if (index == 0) {
            mask = mask0;
          } else if (index == list.length - 1) {
            mask = mask2;
          } else {
            mask = mask1;
          }
          return InkWell(
            onTap: () {
              print('object');              
            },
            child: Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 15 : 0,
                right: index == list.length - 1 ? 15 : 0,
              ),
              child: WidgetMask(
                blendMode: BlendMode.srcATop,
                childSaveLayer: true,
                mask: Image.asset(
                  list[index]['image'],
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                child: Image.asset(
                  mask,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
