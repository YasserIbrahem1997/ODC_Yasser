
import 'package:courses_orange/view/screens/athur/CreatNewPassorwd.dart';
import 'package:courses_orange/view/screens/athur/ForgotPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../../../constract.dart';
import '../../wdiget/myboutton.dart';

class VarifyScreen extends StatefulWidget {
  VarifyScreen({Key? key}) : super(key: key);

  @override
  State<VarifyScreen> createState() => _VarifyScreenState();
}

class _VarifyScreenState extends State<VarifyScreen> {
  var controller = TextEditingController();
  int otpCodeLength = 4;
  bool isLoadingButton = false;
  bool enableButton = false;
  String otpCode = "";

  onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this.otpCode = otpCode;
      if (otpCode.length == otpCodeLength && isAutofill) {
        enableButton = false;
        isLoadingButton = true;
      } else if (otpCode.length == otpCodeLength && !isAutofill) {
        enableButton = true;
        isLoadingButton = false;
      } else {
        enableButton = false;
      }
    });
  }

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
              ForgetPassword())
          )
        ),
        title: Text(
          'Verify Your Email',
          style: TextStyle(color: Colors.black, fontSize: 19),
        ),
        centerTitle: true
      ),
      body: BodyVerify(),
    );
  }

 Widget BodyVerify() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 138),
            Center(
              //this Iamge in Verify
              child: Image.asset(
                'assets/images/ImageVerify.png',
                height: 197,
                width: 197,
              ),
            ),
            SizedBox(height: 60),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'please enter the 4-digit code sent to ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'YasserElabasy@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorBlack,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                    ])),
            SizedBox(height: 47),

            // this plugin in Input Verify OTP
            TextFieldPin(
              textController: controller,
              codeLength: otpCodeLength,
              alignment: MainAxisAlignment.center,
              defaultBoxSize: 56.0,
              margin: 10,
              selectedBoxSize: 60.0,
              textStyle: TextStyle(fontSize: 25),
              defaultDecoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15.0),
              ),
              onChange: (code) {
                onOtpCallBack(code, false);
              },
            ),
            Container(
                width: 335,
                height: 55,
                child: MyButton(lable: 'Varify', onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
                      CreatNewPassword())
                  );
                }, width: 350, height: 50)
            ),
          ],
        ),
      ),
    );
 }
}

