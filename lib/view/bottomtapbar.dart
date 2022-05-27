import 'package:courses_orange/constract.dart';
import 'package:courses_orange/view/screens/ProfailPage.dart';
import 'package:courses_orange/view/screens/homepage.dart';
import 'package:courses_orange/view/screens/mycoursespage.dart';
import 'package:flutter/material.dart';



class BottomTapBar extends StatefulWidget {

  @override
  State<BottomTapBar> createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {
  List _widgetOptions = [
    HomePage(),
    MyCoursesPage(),
    ProfilePage()

  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      height: 75,
      color: colorTxetOrange,
      child: BottomNavigationBar(
selectedItemColor: colorTxetOrange,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home,size: 30,)
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.menu_book_outlined,size: 30,)
          ),
          BottomNavigationBarItem(

              label: "",
              icon: Icon(Icons.account_circle,
                size: 30,)
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
