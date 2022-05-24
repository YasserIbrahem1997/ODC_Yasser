import 'package:flutter/material.dart';

import '../constract.dart';
class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 30),
          child: Text(
            'My Courses',
            style: TextStyle(
              color: colorTxetOrange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leadingWidth: 200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.15,
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index)
                => Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 10.0,
                      bottom: 10.0
                  ),
                ),
                itemBuilder: (BuildContext context, int index) => CoursesList(),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget CoursesList() {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffe8e8e8),
      ),
      child: Padding(
        padding: const EdgeInsets.all( 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('assets/images/photoMobail.png'),
                      fit: BoxFit.cover),
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Container(
                  width: 200,
                  child: Text(
                    'LOL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      'Ahmed ABaza',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff979797)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Color(0xff979797), shape: BoxShape.circle),
                      ),
                    ),
                    Text(
                      '15 Hours',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff979797)),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
