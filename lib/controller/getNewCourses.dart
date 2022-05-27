import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../model/newCoursList.dart';

final apigetNewCourses = ChangeNotifierProvider<getNewCourse>((ref) => getNewCourse());

class getNewCourse extends ChangeNotifier {
  List<NewCoursList> listDataModel = [];

  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQwOCwiaWF0IjoxNjUzNjIwMzcyLCJleHAiOjE2NTM2MjM5NzJ9.6Af8ye4z83ifcje24kMOZ-Zw3rr5n-3uEL8FBEZMbfo";
  GetNewCourse() {
    getNewFetch();
  }

  Future getNewFetch() async {
    print('before here New Coruse');
    listDataModel = [];
    listDataModel.clear();
    try {
      var url =
      Uri.parse("https://d67c-196-205-94-85.eu.ngrok.io/api/v1/courses");
      var response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });
      var responsebody = jsonDecode(response.body)["data"];
      print('here New Coruse');
      //print(response.body.toString());
      print(responsebody);
      for (int i = 0; i < responsebody.length; i++) {
        listDataModel.add(NewCoursList.fromMap(responsebody[i]));
      }
      notifyListeners();
    } catch (e) {
      print("error = > $e");
      notifyListeners();
    }
    notifyListeners();
  }
}
