
import 'package:courses_orange/view/screens/athur/verifyEmail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../../../constract.dart';
import '../../../controller/fetchVerifyEmail.dart';
import '../../bottomtapbar.dart';
import '../../wdiget/myboutton.dart';

class CreatNewPassword extends StatefulWidget {
  CreatNewPassword({Key? key}) : super(key: key);

  @override
  State<CreatNewPassword> createState() => _CreatNewPasswordState();
}

class _CreatNewPasswordState extends State<CreatNewPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
                VarifyScreen())
            )
          ),
          title: Text(
            'Verify Your Email',
            style: TextStyle(color: Colors.black, fontSize: 19),
          ),
          centerTitle: true
      ),
      body: BodyNewPass(),
    );
  }

  Widget BodyNewPass() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 138),
            Center(
              //this Iamge in Verify
              child: Image.asset(
                'assets/images/ImageCreatNewPass.png',
                height: 197,
                width: 197,
              ),
            ),
            SizedBox(height: 60),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Enter your new password\n',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    )),
            SizedBox(height: 47),
            _FormVreify(),

          ],
        ),
      ),
    );
  }

  Widget _FormVreify() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),

          // this text fild emil
          TextFormField(
            controller: emailVerifycontroller,
            validator: (value) {
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\,]+@[\w-]+[\w-]{2,4}').hasMatch(value)) {
                return "This field is required";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              // this text plucholder in butten
                hintText: " Email",
                hintStyle: const TextStyle(
                  color: Color(0xffa7a7a7),
                ),
                // icone befor text email

                //this broder betton email
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1.0, color: colorText)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: colorText,
                    ))),
          ),
          const SizedBox(
            height: 35,
          ),
          // text pass up button
          TextFormField(
            controller: otpcontroller,
            // here is check
            validator: (value) {
              if (value!.isEmpty ) {
                return "This field is pass required";
              } else {
                return null;
              }
            },

            decoration: InputDecoration(
              // this text plucholder in butten
                hintText: " Password",
                hintStyle: const TextStyle(
                  color: Color(0xffa7a7a7),
                ),
                // icone befor text pass

                //this broder betton pass
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1.0, color: colorText)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: colorText,
                    ))),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>  BottomTapBar(),
                  ),
                );
              },

            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
                width: 335,
                height: 55,
                child: MyButton(lable: 'Submit', onTap: (){

                }, width: 350, height: 50)
            ),
          ),


        ],
      ),
    );
  }
}

