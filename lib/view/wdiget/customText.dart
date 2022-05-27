import 'package:courses_orange/constract.dart';
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double Size;
  final FontWeight Weight;

  const CustomText({Key? key, required this.text, this.color, required this.Size, required this.Weight,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: Size,
          fontWeight: Weight,
        ),
      )
    );
  }
}