import 'package:courses_orange/controller/getNewCourses.dart';
import 'package:courses_orange/view/screens/CourseDetils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

// const header= Color(0xff157876);
const colorButton= Color(0xffff6600);
const colorText= Color(0xffFFFFFF);
const colorTxetOrange= Color(0xffff6600);
const colorBlack= Color(0xff020100);
const colorRed= Color(0xffdb0000);
const lightGray= Color(0xffEDEDED);
const subTitleGray=Color(0xff9D9D9D);


//------------------font size------------------//

const double fontDescA=15;
const double fontTitleC=20;
const double fontTitleA=25;
const double fontTitleB=35;
const double fontDescB=23.33;

//-------------padding all--------------------//

const double paddingSmaller=12;
const double paddingXSmaller=14;
const double paddingXXSmaller=16;
const double paddingLarge=18;
const double paddingXLarge=20;
const double paddingXXLarge=30;
const double paddingXXXLarge=35;


const image_url = "https://5742-196-205-94-85.eu.ngrok.io/assets/";

/////////////////////////////////////////////////////////////////////////


Widget _listViewProducts() {
  bool get = false;
  return Consumer(
    builder: ( context,watch,child) {
      var getviewCourses;
      if (get) {
        getviewCourses = watch(apigetNewCourses);
      } else {
        getviewCourses = watch(apigetNewCourses)..getNewFetch();
        get = true;
      }
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: getviewCourses.listDataModel.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const CourseDetails()));
            },
            child: Container(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      getviewCourses.listDataModel[index].image_url,
                      color: colorTxetOrange,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      getviewCourses.listDataModel[index].course_name,
                      style: GoogleFonts.lato(
                        fontSize: fontDescA,
                        color: colorTxetOrange,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Become a Web Developer from Scratch",
                      style: GoogleFonts.lato(
                        fontSize: fontDescA,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Ahmed Abaza",
                          style: GoogleFonts.lato(
                            fontSize: fontDescA,
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "15 Hours",
                          style: GoogleFonts.lato(
                            fontSize: fontDescA,
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          );
        },
      ),
    );
  },);
}


