import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.title,
    required this.titleSize,
    required this.color,
    required this.align,
    required this.weight,
  });

  final String title;
  final double? titleSize;
  final Color? color;
  final TextAlign? align;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      textAlign: this.align,
      style: TextStyle(
        color: this.color,
        fontSize: titleSize,
        fontWeight: this.weight,
      ),
    );
  }
}
