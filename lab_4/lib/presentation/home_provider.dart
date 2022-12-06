
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../module/featured.dart';
import '../module/news.dart';

class HomeProvider extends ChangeNotifier{
  List<Featured> featured = [];
  List<News> news = [];

  Future<void> readJsonFile() async {
    final String jsonString = await rootBundle.loadString('resources/files/news.json');
    final data = await json.decode(jsonString);


    featured = (data ['featured'] as List).map((value) => Featured.fromJson(value)).toList();
    news = (data ['news'] as List).map((value) => News.fromJson(value)).toList();

    //print("from build readJson: $featured");
    notifyListeners();
  }
}
