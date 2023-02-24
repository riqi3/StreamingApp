import 'package:flutter/material.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (shapeSizing / 2) - 10,
      width: shapeSizing * 5,
      decoration: BoxDecoration(
        color: grey.withOpacity(.2),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(
                Icons.search,
                color: grey,
              ),
            ),
            Text(
              'Search',
              style: TextStyle(
                color: grey,
              ),
            ),
            Spacer(),
            Icon(
              Icons.mic_outlined,
              color: grey,
            )
          ],
        ),
      ),
    );
  }
}
