import 'package:flutter/material.dart';

import '../constants.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding/2,),
          child: Container(
          width: 55,
            height: 100,
          decoration: BoxDecoration(
            color: white.withOpacity(.1),
            borderRadius: BorderRadius.circular(
              shapeSizing,
            ),
            border: Border.all(
              width: 3.5,
              color: white,
            ),
          ),
          child: Transform.scale(
            scale: 1.3,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              highlightColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                  
              child: Image.asset(
                'assets/icons/back.png',
              ),
            ),
          ),
                ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: defaultPadding/2),
          child: Container(
            width: 55,
            height: 100,
            decoration: BoxDecoration(
            color: white.withOpacity(.1),
            borderRadius: BorderRadius.circular(
              shapeSizing,
            ),
            border: Border.all(
              width: 3.5,
              color: white,
            ),
          ),
            child: Transform.scale(
              scale: 1.3,
              child: InkWell(
                onTap: () {
                  print('object');
                },
                highlightColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                child: Image.asset(
                  'assets/icons/menu.png',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  
   @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
