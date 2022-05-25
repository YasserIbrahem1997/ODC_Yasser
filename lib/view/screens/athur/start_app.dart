import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/screens/athur/loginpage.dart';
import 'package:courses_orange/view/screens/athur/singup.dart';
import 'package:courses_orange/view/wdiget/myboutton.dart';
import 'package:flutter/mat\erial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../wdiget/IntroImage.dart';
import '../../wdiget/button_border.dart';

class StartApp extends StatelessWidget {
  //create controller bucos add this in page view
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 130),
            child: Center(
                child: Column(
              children: [
                //strat Intro Image and Text underl image
                Container(
                  height: 450,
                  child: PageView(
                    controller: _controller,
                    children: [
                      IntroImage(
                        introImage: 'assets/images/introOne.png',
                      ),
                      IntroImage(introImage: 'assets/images/introTow.png'),
                      IntroImage(introImage: 'assets/images/introThre.png'),
                    ],
                  ),
                ),
                //End Intro Image and Text underl image
                SizedBox(
                  height: 15,
                ),
                //strat point underl image
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    activeDotColor: colorTxetOrange,
                    dotColor: colorTxetOrange.withOpacity(0.3),
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
                //end point underl image

                SizedBox(
                  height: 35,
                ),
                //strat button  login and signup
                Row(
                  children: [
                    Expanded(
                        child: MyButton(
                            lable: "Join Now",
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) =>  SingUp()),
                              );
                            },
                            width: 150,
                            height: 50)),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: MyButtonBorder(
                            lable: "Log in",
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) =>  LoginPage()),
                              );
                            },
                            width: 140,
                            height: 50)),
                  ],
                ),
              ],
            ))),
      ),
    );
  }
}
