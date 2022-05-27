import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:courses_orange/view/wdiget/allDialog.dart';
import 'package:courses_orange/view/wdiget/customText.dart';
import 'package:courses_orange/view/wdiget/myboutton.dart';
import 'package:flutter/material.dart';


class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 350,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/Photolaptop.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: ()
                            {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>  BottomTapBar(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              size: 20,
                              color: colorText,
                            )
                        )
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              CustomText(text: 'Learn UI/UX for beginners', color: colorBlack, Size: fontTitleA, Weight: FontWeight.bold,),
              const SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.center,
                  child: CustomText(text: 'Author: Ahmed Abaza', color: subTitleGray, Size: fontDescA, Weight: FontWeight.normal,)
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(lable: "Start Course", onTap: (){
                showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) => DialogSentCode());
              }, width: 315, height: 55),
              const SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text:
                    'About this Course ',
                    color: colorBlack,
                    Size: fontDescA,
                    Weight: FontWeight.bold,
                  )
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text:
                    'Welcome to your UX Design for Beginners Course. In the following tutorials, youll get a thorough introduction to UX design, from its definition, areas and origins through to the skills you need to build a professional portfolio and become a UX designer',
                    color: colorBlack, Size: fontDescA, Weight: FontWeight.normal,)
              ),
              const SizedBox(
                height: 25,
              ),
              Row(

                children:
                [
                  Icon(Icons.leaderboard_outlined,color: colorTxetOrange,size: fontTitleA,),
                  const SizedBox(
                    width: 25,
                  ),
                  CustomText(text: 'Bing Level', color: colorBlack, Size: fontTitleC, Weight: FontWeight.normal,)
                ],
              ),
              const SizedBox(
                width: 25,
                height: 25,
              ),
              Row(

                children:
                [
                  Icon(Icons.location_on_outlined,color: colorTxetOrange,size: fontTitleA,),
                  const SizedBox(
                    width: 25,
                  ),
                  CustomText(text: 'alex', color: colorBlack, Size: fontTitleC, Weight: FontWeight.normal,)
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              Container(
                  alignment: Alignment.bottomLeft,

                  child:  CustomText(text: 'You may be interested in', color: colorBlack, Size: fontDescA, Weight: FontWeight.normal,)
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child:   ListView.separated(
                  itemBuilder: (BuildContext context, int index) =>Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/Photolaptop.png'),
                                fit: BoxFit.cover),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            child: CustomText(text: 'Learn UI/UX for Beginners', color: colorBlack, Size: fontDescA, Weight: FontWeight.normal,

                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                        ],
                      )
                    ],
                ),
                  ),
                  itemCount: 2, separatorBuilder: (BuildContext context, int index) => const SizedBox(
                    width: 9.0,
                  ),
                  scrollDirection: Axis.horizontal
                  ,),
              )


            ],
          ),
        ),
      ),
    );
  }
}