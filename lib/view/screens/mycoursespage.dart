import 'package:courses_orange/view/screens/CourseDetils.dart';
import 'package:flutter/material.dart';

import '../../constract.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorText,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: colorText,
        elevation: 0,
        title: const Text(
          'My Courses',
          style: TextStyle(fontSize: 30, color: colorTxetOrange),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: ((context, index) => MyCourseIist(context)),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: 8,
        ),
      ),
    );
  }

  // Widget CoursesList() {
  //   return Container(
  //
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: Color(0xffe8e8e8),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.all( 10.0),
  //       child: Row(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //               height: 100.0,
  //               width: 100.0,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(12),
  //                 image: DecorationImage(
  //                     image: AssetImage('assets/images/photoMobail.png'),
  //                     fit: BoxFit.cover),
  //               )),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Column(
  //             children: [
  //               Container(
  //                 width: 200,
  //                 child: Text(
  //                   'LOL',
  //                   style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 18,
  //                     fontWeight: FontWeight.w600,
  //                   ),
  //                   maxLines: 2,
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 5.0,
  //               ),
  //               Row(
  //                 children: [
  //                   Text(
  //                     'Ahmed ABaza',
  //                     style: TextStyle(
  //                         fontSize: 18,
  //                         fontWeight: FontWeight.w600,
  //                         color: Color(0xff979797)),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Container(
  //                       width: 5,
  //                       height: 5,
  //                       decoration: BoxDecoration(
  //                           color: Color(0xff979797), shape: BoxShape.circle),
  //                     ),
  //                   ),
  //                   Text(
  //                     '15 Hours',
  //                     style: TextStyle(
  //                         fontSize: 18,
  //                         fontWeight: FontWeight.w600,
  //                         color: Color(0xff979797)),
  //                   ),
  //                 ],
  //               )
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget MyCourseIist(context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>  CourseDetails(),
            ),
          );
        },
        child: Card(
          child: Row(
            children: [
              Container(
                width: 106,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/photoMobail.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mobile Development',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: fontDescA),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text(
                          'Author',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Ysser Ibrahem',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 13),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>  CourseDetails(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
