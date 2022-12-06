import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab4/presentation/home_provider.dart';
import 'package:lab4/presentation/home_widgets/featured/featured_list.dart';
import 'package:lab4/presentation/home_widgets/header.dart';
import 'package:lab4/presentation/home_widgets/news/news_list.dart';
import '../module/featured.dart';
import '../module/news.dart';
import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    Provider.of<HomeProvider>(context,listen: false).readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> homeItems = [const Header(text: "Featured"),const FeaturedList(),const Header(text: "News"),const NewsList()];
    //Provider.of<HomeProvider>(context,listen: true).readJsonFile();
    return Scaffold(
        /*appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),*/
        body: Center(
            child: Container(
              //color: Colors.green,
              width: 358,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeItems.asMap().length,
                  itemBuilder: (BuildContext context, int index) {
                    return homeItems[index];
                  }
              ),
            )
        )
    );
  }
}