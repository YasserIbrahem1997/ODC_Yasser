import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:flutter/material.dart';
class NewCourses extends StatefulWidget {
  const NewCourses({Key? key}) : super(key: key);

  @override
  State<NewCourses> createState() => _NewCoursesState();
}

class _NewCoursesState extends State<NewCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
                separatorBuilder: (BuildContext context, int index) => Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 10.0,
                      bottom: 10.0
                  ),
                  child: Container(
                    color: Color(0xff979797),
                    height: 1,
                    width: double.infinity,
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
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
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
    );
  }
}
