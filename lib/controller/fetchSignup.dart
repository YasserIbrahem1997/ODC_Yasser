import 'dart:convert';

import 'package:courses_orange/view/screens/athur/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../view/screens/athur/singup.dart';


var namecontroller = TextEditingController();
var phonecontroller = TextEditingController();
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
var addresscontroller = TextEditingController();
//-------------------------------------------------------------
Future<void> fetchregester(
    String email, String password,String name,String phone,String address, BuildContext context) async {
  var url = Uri.parse("https://3ca3-196-205-94-85.eu.ngrok.io/api/v1/registernew");
  var respons = await http.post(url, body: {
    "name": namecontroller.text,
    "phone": phonecontroller.text,
    "email": emailcontroller.text,
    "password": passwordcontroller.text,
    "address": addresscontroller.text
  },
  );
  var responsbody = jsonDecode(respons.body);
  if (responsbody["success"] == true) {
    print("yasse");
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) =>  LoginPage()),
    );
    final snacBar = SnackBar(
      content: Text("تم التسجيل بنجاح"),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snacBar);
  } else {
    print(responsbody["message"]);
    final snacBar = SnackBar(
      content: Text(responsbody["message"]),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snacBar);
  }
}
// -------------------------End -----------------------------

