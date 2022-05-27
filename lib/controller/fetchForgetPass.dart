import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../view/screens/athur/verifyEmail.dart';


var emailForgetcontroller = TextEditingController();

//-------------------------------------------------------------
Future<void> fetchForgetpass(String email, BuildContext context) async {
  var url = Uri.parse("https://3ca3-196-205-94-85.eu.ngrok.io/api/v1/forgetPassword");
  var response = await http.post(url, body: {
    'email': emailForgetcontroller.text,
  },
  );
  var responsbody = jsonDecode(response.body);

  if (responsbody["success"] == true) {
    print("تم ارسال ميل بالفعل");
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
        VarifyScreen())
    );
    final snacBar=SnackBar(
      content: Text("Success"),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snacBar);
  }  else{
    print(responsbody["message"]);
    final snacBar=SnackBar(
      content: Text(responsbody["message"]),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snacBar);
  }
}

// -------------------------End -----------------------------

