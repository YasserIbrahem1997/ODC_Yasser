import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/Quize%20Screen/quizScreen.dart';
import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:courses_orange/view/wdiget/myboutton.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text(
            'New Courses',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          leading: new IconButton(
            icon: new Icon(
                Icons.arrow_back,
                color: colorBlack),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>  BottomTapBar(),
                ),
              );
            },
          ),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 1), //1/6
                    Center(
                      child: Text(
                        "Learn UI/UX for Beginners",
                        style:TextStyle( color: colorBlack,
                            fontWeight: FontWeight.bold,
                        fontSize: fontDescB
                        ),
                      ),
                    ),
                    SizedBox(height: 25,), //1/6
                      Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/IamgeExam.png",
                    fit: BoxFit.cover,
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
                    Center(
                      child: Text(
                        "Start your exam",
                        style:TextStyle( color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: fontDescB
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Center(
                      child: Text(
                        "Make Sure to Achieve More Than 60% ",
                        style:TextStyle( color: colorBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20),
                      child: Center(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exam Time",
                              style:TextStyle( color: colorBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                            Text(
                              "1 Hr",
                              style:TextStyle( color: colorBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                    SizedBox(height: 35,),
                    MyButton(lable: "Start",
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>  QuizScreen(),
                          ),
                        );
                      },
                      width: 300,
                      height: 60,

                    ),
                    Spacer(flex: 2), // it will take 2/6 spaces
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  }
}
