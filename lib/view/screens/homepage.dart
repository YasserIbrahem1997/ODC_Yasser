import 'package:courses_orange/constract.dart';
import 'package:courses_orange/controller/getCategors.dart';
import 'package:courses_orange/view/screens/CourseDetils.dart';
import 'package:courses_orange/view/screens/categorys/newcourses.dart';
import 'package:courses_orange/view/screens/categorys/pagecategory.dart';
import 'package:courses_orange/view/screens/categorys/pagewebd.dart';
import 'package:courses_orange/view/wdiget/inputfiledtian.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> names = <String>[
    'Web Development',
    'Programing Languages',
    'Graphics',
    'Graphics',
    'Graphics'
  ];
  final List<String> imCateg = <String>[
    'assets/images/logoCate.svg',
    'assets/images/logocode.svg',
    'assets/images/logoLapt.svg',
    'assets/images/logocode.svg',
    'assets/images/logocode.svg',
  ];

  final List<String> proda = <String>['BeoPlay Speaker', 's', 's', 's', 's'];

  final List<String> proDes = <String>['BeoPlay Speaker', 's', 's', 's', 's'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Image.asset(
            "assets/images/logoab.png",
          ),
        ),
        leadingWidth: 150,
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                  child: Column(
                children: [
                  //this is Card Enter Code And Go To Course
                  _CardToCourse(),
                  SizedBox(
                    height: 10,
                  ),
                  //this is row add text Top categories and see all
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Top Categories",
                          style: GoogleFonts.lato(
                            fontSize: fontTitleC,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      PageCategory()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "See All",
                            style: GoogleFonts.lato(
                                fontSize: fontDescA,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _listCategory(),
                  //this is row add text Top categories and see all
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New Courses",
                          style: GoogleFonts.lato(
                            fontSize: fontTitleC,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.only(right: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "See All",
                            style: GoogleFonts.lato(
                                fontSize: fontDescA,
                                color: colorTxetOrange,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NewCourses()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _listViewProducts(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  //here add Widget _CardToCourse Widget up
  Widget _CardToCourse() {
    return Container(
      width: 388,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorBlack,
        boxShadow: [
          BoxShadow(
            color: colorTxetOrange,
            spreadRadius: 1,
            blurRadius: 0,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.7,
            padding: const EdgeInsets.only(left: 26.0, top: 28),
            child: Text(
              "Enter the Code to Get your course",
              style: GoogleFonts.lato(
                fontSize: fontTitleA,
                color: colorText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 26.0, top: 28),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(25.0),
                  width: 275,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xff2b2b2b),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    autofocus: false,
                    cursorColor: colorText,
                    decoration: InputDecoration(
                      fillColor: colorText,
                      hintText: "Enter code",
                      hintStyle: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: colorText.withOpacity(0.5),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: colorText.withOpacity(0),
                            width: 0,
                          )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: colorText.withOpacity(0),
                            width: 0,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: colorButton,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: IconButton(
                      icon: new Icon(
                        Icons.arrow_right_alt,
                        color: colorText,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>  CourseDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // here add Widget List Top Category and add in scaffold Widget up
  Widget _listCategory() {
    bool get = false;
    return Consumer(
        builder: (context, watch, child) {
          var getviewcategot;
          if(get){
            getviewcategot = watch(apigetCateg);
          }else{
            getviewcategot = watch(apigetCateg)..getdatacategors();
            get = true;
          }
      return Container(
        height: 150,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: getviewcategot.listDataModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => PageCategory()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 80,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.network(
                              getviewcategot
                                  .listDataModel[index].image_url,
                          color: colorTxetOrange,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      getviewcategot.listDataModel[index].category_name,
                      style: TextStyle(
                        fontSize: fontDescA,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,

                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            width: 20,
          ),
        ),
      );
    }
    );
  }

  // here add Widget list top Products and add in scaffold Widget up

  Widget _listViewProducts() {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  CourseDetails(),
                ),
              );
            },
            child: Container(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Photolaptop.png"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Web Development",
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
  }


}
