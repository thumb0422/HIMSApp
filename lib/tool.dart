import 'dart:async';
import 'dart:async' show Future;
//import 'package:flutter/services.dart' show rootBundle;
//import 'dart:convert';
import 'dart:math';

Future<List<int>> getMaindata() async {
  List<int> resultList = List();
//  String jsonData = await rootBundle.loadString('assets/typeConfig.json');
//  List list = json.decode(jsonData);
//  list.forEach((item){
//    TypeModel typeModel = TypeModel.fromJson(item);
//    resultList.add(typeModel);
//  });
  int total = Random().nextInt(20);
  for (var i = 0; i < total; i++) {
    resultList.add(i);
  }
  return resultList;
}


Future<List<String>> getDetailDataByKey({key:String}) async {
  List<String> resultList = List();
//  String jsonData = await rootBundle.loadString('assets/typeConfig.json');
//  List list = json.decode(jsonData);
//  list.forEach((item){
//    TypeModel typeModel = TypeModel.fromJson(item);
//    resultList.add(typeModel);
//  });

  return resultList;
}