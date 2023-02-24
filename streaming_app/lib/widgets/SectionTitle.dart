import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.titleSize,
    required this.align,
    required this.weight,
  });

  final String title;
  final double titleSize;
  final TextAlign align;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      textAlign: this.align,
      style: TextStyle(
        color: white,
        fontSize: titleSize,
        fontWeight: this.weight,
      ),
    );
  }
}
