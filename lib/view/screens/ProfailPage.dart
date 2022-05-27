
import 'package:courses_orange/view/wdiget/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constract.dart';
import '../wdiget/allDialog.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorText,
      appBar: AppBar(
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: IconButton(
              icon: const Icon(Icons.logout, color: Colors.black),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) => DialogLogout());
              },
            ),
          ),
        ],

        backgroundColor: colorText,
        elevation: 0,
        title: const Text('My Profile',
            style: TextStyle(fontSize: 30, color: colorTxetOrange)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: colorTxetOrange,
                    radius: 80,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Yasser Ibrahem',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    width: 158,
                    height: 21,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Yasser1997@gmail.com',
                        style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const Text('My Achievement',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildMyAchievementItem(context),
                  const SizedBox(height: 10),
                  buildMyAchievementItem(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMyAchievementItem(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SizedBox(
                    height: 75,
                    width: 75,
                    child:
                    Image.asset('assets/images/Star.png', fit: BoxFit.cover),
                  )),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Learn UI/UX for beginners',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Achieved April 21 2022',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}