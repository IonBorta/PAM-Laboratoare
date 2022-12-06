
import 'package:flutter/material.dart';
import 'package:lab4/presentation/home_widgets/featured/featured_item.dart';

import '../../../module/featured.dart';
import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';
import '../../home_provider.dart';
import 'package:provider/provider.dart';

class FeaturedList extends StatelessWidget{
  const FeaturedList({super.key, /*required this.featured*/});


  @override
  Widget build(BuildContext context) {
    List<Featured> featured = Provider.of<HomeProvider>(context).featured;
    // TODO: implement build
    return Container( // list view
      //color: Colors.greenAccent,
      margin: const EdgeInsets.only(top: 16),
      //color: Colors.blue,
      height: 252,
      //width: 358,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          //padding: const EdgeInsets.all(8),
          separatorBuilder: (context,index) {
            return const SizedBox(width: 12,);
          },
          itemCount: /*images.length*/featured.asMap().length,
          itemBuilder: (BuildContext context, int index) {
            //print("index = $index");
            return FeaturedItem(featured: featured[index],);
          }
      ),
    );
  }

}