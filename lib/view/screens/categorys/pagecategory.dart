import 'package:courses_orange/controller/getCategors.dart';
import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:courses_orange/view/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constract.dart';
import '../../../model/products.dart';

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
          child: Text(
            "Categories",
            style: GoogleFonts.lato(
              fontSize: fontTitleC,
              color: colorBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: colorBlack),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => BottomTapBar(),
              ),
            );
          },
        ),
      ),
      body: _CardCategore(),
    );
  }

  Widget _CardCategore() {
    bool get = false;
    return Consumer(
      builder: (BuildContext context, watch, child) {
        var getviewcategot;
        if (get) {
          getviewcategot = watch(apigetCateg);
        } else {
          getviewcategot = watch(apigetCateg)..getdatacategors();
          get = true;
        }
        return GridView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: getviewcategot.listDataModel.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: 20,
                height: 20,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(155),
                          color: Color(0xfffcfcfc),
                          boxShadow: []),
                      height: 100,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        shadowColor: colorBlack,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xfffcfcfc),
                              boxShadow: []),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.network(
                              getviewcategot
                                  .listDataModel[index].image_url,
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
                          getviewcategot.listDataModel[index].category_name,
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
            );
          },
          scrollDirection: Axis.vertical, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 2,childAspectRatio: 1/1,
        ),

        );
      },
    );
  }
}
