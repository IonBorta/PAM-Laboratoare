

import 'package:flutter/material.dart';
import 'package:lab4/presentation/home_provider.dart';
import 'package:lab4/presentation/home_widgets/news/news_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../module/news.dart';
import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';

class NewsList extends StatelessWidget{
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {

    List<News> news = Provider.of<HomeProvider>(context).news;
    // TODO: implement build
    return Column(
      children: [
        for(int index = 0; index < news.asMap().length; index++) NewsItem(news: news[index]/*, index: index*/)
      ],
    );
  }
}