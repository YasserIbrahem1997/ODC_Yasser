import 'dart:convert';

import 'package:courses_orange/controller/fetchlogin.dart';
import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:courses_orange/view/screens/athur/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


// -------------------------------------------------------------

Future<void> fetchLogout( BuildContext context) async {
  var url = Uri.parse("https://3ca3-196-205-94-85.eu.ngrok.io/api/v1/logout");
  var response = await http.post(url, body: {});
  var responsbody = jsonDecode(response.body);
  if (responsbody["success"] == true) {
    print("object");
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
        LoginPage())
    );
    final snacBar=SnackBar(
      content: Text("successfully Logut"),
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


