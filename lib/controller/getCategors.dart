import 'dart:convert';

import 'package:courses_orange/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final apigetCateg = ChangeNotifierProvider<getCategors>((ref) => getCategors());

class getCategors extends ChangeNotifier {
  List<CategorsList> listDataModel = [];

  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjUzNDQzNTk3LCJleHAiOjE2NTM0NDcxOTd9.ztrJlWFjK_-cqc9geVbDhelsI5eTqbfOqugj-K_11CU";

  GetProducts() {
    getdatacategors();
  }

  Future getdatacategors() async {
    print('before');
    listDataModel = [];
    listDataModel.clear();
    try {
      var url =
          Uri.parse("https://d67c-196-205-94-85.eu.ngrok.io/api/v1/categories");
      var response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });
      var responsebody = jsonDecode(response.body)["data"];
      print('here');
      print(response.body.toString());
      print(responsebody);
      for (int i = 0; i < responsebody.length; i++) {
        listDataModel.add(CategorsList.fromMap(responsebody[i]));
      }
      notifyListeners();
    } catch (e) {
      print("error = > $e");
      notifyListeners();
    }
    notifyListeners();
  }
}
