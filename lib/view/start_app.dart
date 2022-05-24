import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/wdiget/myboutton.dart';
import 'package:flutter/mat\erial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartApp extends StatelessWidget {
  //create controller bucos add this in page view
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Page view  with scroll point
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height/1,
                child: PageView(
                  controller: _controller,
                  children: [_IntroOne(), _IntroTow(), _IntroThree()],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ScrollingDotsEffect(
                  activeDotColor: colorTxetOrange,
                  dotColor: colorTxetOrange.withOpacity(0.3),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _IntroOne() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              "assets/images/introOne.png",
              fit: BoxFit.cover,
              // height: double.infinity,
              // width: double.infinity,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(

            child: Text(
              "Learn a lot of courses in Orange Education",
              style: GoogleFonts.lato(
                fontSize: fontTitleA,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
              style: GoogleFonts.lato(
                fontSize: fontDescA,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _IntroTow() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              "assets/images/introTow.png",
              fit: BoxFit.cover,
              // height: double.infinity,
              // width: double.infinity,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(

            child: Text(
              "Learn a lot of courses in Orange Education",
              style: GoogleFonts.lato(
                fontSize: fontTitleA,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(

            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
              style: GoogleFonts.lato(
                fontSize: fontDescA,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _IntroThree() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              "assets/images/introThre.png",
              fit: BoxFit.cover,
              // height: double.infinity,
              // width: double.infinity,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Text(
              "Learn a lot of courses in Orange Education",
              style: GoogleFonts.lato(
                fontSize: fontTitleA,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(

            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
              style: GoogleFonts.lato(
                fontSize: fontDescA,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
