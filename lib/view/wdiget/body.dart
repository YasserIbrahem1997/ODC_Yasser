import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/wdiget/myboutton.dart';
import 'package:courses_orange/view/wdiget/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/quiz/question_controller.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _controller = Get.put(QuestionController());
    QuestionController _questionController = Get.put(QuestionController());
    final int _duration = 50;
    return Scaffold(
      backgroundColor: colorText,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
                  () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text:
                      "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: colorTxetOrange),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: colorTxetOrange),
                        ),
                      ],
                    ),

                  ),
                  CircularCountDownTimer(
                    ringColor: colorTxetOrange,
                    width: 40,
                    duration: _duration,
                    fillColor: lightGray,
                    height: 40,
                    autoStart: true,
                    isReverse: false,
                  ),

                ],
              ),
            ),
            SizedBox(height: 55,),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index]),
              ),
            ),
            SizedBox(height: 0,),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(left: 20,right: 20),
              margin: EdgeInsets.only(bottom: 150),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(lable: "Next", onTap: _controller.nextQuestion, width: 170, height: 50),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
