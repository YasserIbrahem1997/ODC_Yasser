import 'package:courses_orange/view/screens/athur/loginpage.dart';
import 'package:courses_orange/view/wdiget/button_border.dart';
import 'package:courses_orange/view/wdiget/customText.dart';
import 'package:courses_orange/view/wdiget/myboutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constract.dart';
import '../../controller/fetchLogout.dart';
import '../Quize Screen/WelcomScreen.dart';

class DialogSentCode extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double radius = 50;
    double padding = 10;
    double hSize = 300;
    double wSize = 400;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: 400,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(padding),
              margin: EdgeInsets.only(top: radius),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(padding),
              ),
              height: hSize,
              width: wSize,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    GestureDetector(

                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.topRight,
                        child: Icon(Icons.close,size: 30,),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Image.asset("assets/images/illustrations.png"),
                    ),
                    SizedBox(height: 25,),
                    CustomText(text: "The Code has been Sent", Size: fontTitleC,color: colorBlack, Weight: FontWeight.bold,),
                    SizedBox(height: 45,),
                    MyButton(lable: "Next", onTap: (){
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) => DialogEnterCode(),
                      );
                    }, width: 250, height: 50),
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

class DialogEnterCode extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double radius = 50;
    double padding = 10;
    double hSize = 450;
    double wSize = 400;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: 400,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(padding),
              margin: EdgeInsets.only(top: radius),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(padding),
              ),
              height: hSize,
              width: wSize,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    GestureDetector(

                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.topRight,
                        child: Icon(Icons.close,size: 30,),
                      ),
                    ),
                    SizedBox(height: 45,),
                    Container(
                      child: Image.asset("assets/images/illustrations (1).png"),
                    ),
                    SizedBox(height: 25,),
                    CustomText(text: "Enter the Code to Get your course",
                      Size: 15,
                      color: colorBlack,
                      Weight: FontWeight.bold,),
                    SizedBox(height: 35,),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: lightGray,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        // controller: passwordcontroller,
                        // here is check
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return "This field is pass required";
                          } else {
                            return null;
                          }
                        },
                        // onSaved: (value) => passwordcontroller.text = value!,

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // this text plucholder in butten
                            hintText: " XXXXXXXXXXXXX",
                            hintStyle: const TextStyle(
                              color: Color(0xffa7a7a7),

                            ),
                            // icone befor text email

                            //this broder betton email
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(width: 1.0, color: lightGray)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: lightGray,
                                ))),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 45,),
                    MyButton(lable: "Submit", onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>  WelcomScreen(),
                        ),
                      );
                    }, width: 250, height: 50),
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
class DialogLogout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double radius = 50;
    double padding = 10;
    double hSize = 450;
    double wSize = 400;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: 400,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(padding),
              margin: EdgeInsets.only(top: radius),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(padding),
              ),
              height: hSize,
              width: wSize,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    // GestureDetector(
                    //
                    //   onTap: (){
                    //     Navigator.pop(context);
                    //   },
                    //   child: Container(
                    //     padding: EdgeInsets.only(right: 10),
                    //     alignment: Alignment.topRight,
                    //     child: Icon(Icons.close,size: 30,),
                    //   ),
                    // ),
                    SizedBox(height: 45,),
                    Container(
                      child: Image.asset("assets/images/ImageLogOut.png"),
                    ),
                    SizedBox(height: 25,),
                    CustomText(text: "Are you sure you want to log out",
                      Size: 15,
                      color: colorBlack,
                      Weight: FontWeight.bold,),
                    SizedBox(height: 35,),
                    SizedBox(height: 45,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButtonBorder(lable: "Cancel", onTap: (){
                        Navigator.pop(context);
                      }, width: 150, height: 50),
                        MyButton(lable: "Logout", onTap: (){
                          print('Validate');
                          fetchLogout(context);
                        }, width: 150, height: 50),

                      ],
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