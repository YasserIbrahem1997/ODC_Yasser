import 'dart:convert';

import 'package:courses_orange/view/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


var namecontroller = TextEditingController();
var phonecontroller = TextEditingController();
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
var addresscontroller = TextEditingController();
//-------------------------------------------------------------
Future<void> fetchregester(
    String email, String password,String name,String phone,String address, BuildContext context) async {
  var url = Uri.parse("https://student.valuxapps.com/api/register");
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
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()),
            (Route<dynamic> route) => false);
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

