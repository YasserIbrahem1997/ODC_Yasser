import 'package:flutter/material.dart';

import '../../constract.dart';
class ButtonBorder extends StatelessWidget {
  final String lable;
  final Function()? onTap;
  final double Size;


  const ButtonBorder({Key? key, required this.lable, required this.onTap, required this.Size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: Size,
        height: Size,
        color: Colors.white.withOpacity(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: colorButton
        ),
        child: Text(
          lable,
          style: TextStyle(
            fontSize: 20,
            color: colorText,
          ),
        ),
      ),
    );
  }
}