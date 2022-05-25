import 'package:courses_orange/view/wdiget/customText.dart';
import 'package:flutter/material.dart';
import '../../constract.dart';
import '../wdiget/body.dart';
class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: CustomText(color: colorBlack,  text: 'Course Exam', Size: fontDescA, Weight: FontWeight.bold,),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}