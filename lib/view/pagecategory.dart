import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:courses_orange/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constract.dart';
class PageCategory extends StatefulWidget {
  const PageCategory({Key? key}) : super(key: key);

  @override
  State<PageCategory> createState() => _PageCategoryState();
}

class _PageCategoryState extends State<PageCategory> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: colorText,
        title: Center(
          child: Text("Categories",
            style: GoogleFonts.lato(
              fontSize: fontTitleC,
              color: colorBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
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
      body: Container(
        padding: EdgeInsets.only(left: 15.0,
          top: 20
        ),
        decoration: BoxDecoration(
color: colorText,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            )
        ),
        child: GridView.count(

          crossAxisCount: 2, // كدا بخليه يظهر في الصف 2 بس دا مع الجريد فيو
          crossAxisSpacing: 5, // كدا بخليه المسافات 5
          mainAxisSpacing: 5,
          scrollDirection: Axis.vertical,

          children: [

            GestureDetector(
              onTap: (){
              },
              child:  Container(
                width: 20,
                height: 20,
                child:  Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color:  Color(0xfffcfcfc),
                          boxShadow: [

                          ]),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),

                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xfffcfcfc),
                              boxShadow: [

                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),

                            child: SvgPicture.asset("assets/images/logoCate.svg",
                              color: colorTxetOrange,
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Web Development",
                        style: GoogleFonts.lato(
                          fontSize: fontTitleC,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child:  Container(
                width: 20,
                height: 20,
                child:  Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color:  Color(0xfffcfcfc),
                          boxShadow: [

                          ]),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),

                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xfffcfcfc),
                              boxShadow: [

                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),

                            child: SvgPicture.asset("assets/images/logoCate.svg",
                              color: colorTxetOrange,

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Web Development",
                        style: GoogleFonts.lato(
                          fontSize: fontTitleC,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child:  Container(
                width: 20,
                height: 20,
                child:  Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color:  Color(0xfffcfcfc),
                          boxShadow: [

                          ]),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),

                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xfffcfcfc),
                              boxShadow: [

                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),

                            child: SvgPicture.asset("assets/images/logoCate.svg",
                              color: colorTxetOrange,

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Web Development",
                        style: GoogleFonts.lato(
                          fontSize: fontTitleC,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child:  Container(
                width: 20,
                height: 20,
                child:  Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color:  Color(0xfffcfcfc),
                          boxShadow: [

                          ]),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),

                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xfffcfcfc),
                              boxShadow: [

                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),

                            child: SvgPicture.asset("assets/images/logoCate.svg",
                              color: colorTxetOrange,

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Web Development",
                        style: GoogleFonts.lato(
                          fontSize: fontTitleC,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child:  Container(
                width: 20,
                height: 20,
                child:  Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color:  Color(0xfffcfcfc),
                          boxShadow: [

                          ]),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),

                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xfffcfcfc),
                              boxShadow: [

                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),

                            child: SvgPicture.asset("assets/images/logoCate.svg",
                              color: colorTxetOrange,

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Web Development",
                        style: GoogleFonts.lato(
                          fontSize: fontTitleC,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child:  Container(
                width: 20,
                height: 20,
                child:  Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color:  Color(0xfffcfcfc),
                          boxShadow: [

                          ]),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),

                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xfffcfcfc),
                              boxShadow: [

                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),

                            child: SvgPicture.asset("assets/images/logoCate.svg",
                              color: colorTxetOrange,

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Web Development",
                        style: GoogleFonts.lato(
                          fontSize: fontTitleC,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
