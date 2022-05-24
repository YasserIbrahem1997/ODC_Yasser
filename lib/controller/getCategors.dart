import 'dart:convert';

import 'package:courses_orange/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart'as http;

final apigetCateg = ChangeNotifierProvider<getCategors>((ref)=> getCategors());
class getCategors extends ChangeNotifier{
  List<CategorsList>listDataModel = [];

  GetProducts(){
    getdatacategors();
  }
  Future getdatacategors () async{
    listDataModel=[] ;
    listDataModel.clear();
    try {
      var url = Uri.parse("https://5742-196-205-94-85.eu.ngrok.io/api/v1/categories");
      var response = await http.get(url);
      var responsebody = jsonDecode(response.body)["data"];
      print(responsebody);
      for (int i= 0 ; i <responsebody.length; i++){
        listDataModel.add(CategorsList.fromMap(responsebody[i]));
      }

    }catch(e){
      print("error = > $e");
    }
    notifyListeners();
  }

}