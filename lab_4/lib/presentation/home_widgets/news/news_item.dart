
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../module/news.dart';
import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';

class NewsItem extends StatelessWidget{
  const NewsItem({super.key, required this.news});

  final News news;
  //final int index;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //color: Colors.blue,
      height: 156,
      width: 358,
      margin: const EdgeInsets.only(bottom: 12),
      //padding: EdgeInsets.only(bottom: 24, left: 12, right: 12),
      child: Row(
        children: [
          Container(
            width:150,
            height: 156,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        news.cover
                    ),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16))
            ),
            //child: SvgPicture.asset(newsImages[index]),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
              width: 176,
              height: 108,
              //color: Colors.deepPurpleAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //color: Colors.deepPurpleAccent,
                children: [
                  //Container(color: Colors.deepPurpleAccent,),

                  Text(news.title,
                      textWidthBasis: TextWidthBasis.parent,
                      //softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textStyleSourceSansPro(
                          fontSize: 18,
                          color: CustomColors.pickledBluewood,
                          fontWeight: FontWeight.w600,
                          height: 22/18
                      )
                  ),
                  Container(
                    //color: Colors.yellow,
                    //margin: EdgeInsets.only(bottom: 16,top: 16),
                    child:
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height:16,
                            width: 16,
                            margin: const EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        news.portal.logo
                                    ),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(8))
                            )
                          //child: SvgPicture.asset(portalLogo[index]),
                        ),
                        Container(//color: Colors.greenAccent,
                          //padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                          //  height: 16,
                          child:
                          Text(news.portal.title,
                              //textHeightBehavior: TextHeightBehavior(leadingDistribution: TextLeadingDistribution.proportional),
                              textAlign: TextAlign.center,
                              style: TextStyles.textStyleSourceSansPro(
                                  fontSize: 10,
                                  color: CustomColors.pickledBluewood,
                                  fontWeight: FontWeight.w600,
                                  height: 10/10
                              )
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 4),
                          height: 16,
                          width: 45,
                          padding: EdgeInsets.symmetric(vertical: 2,horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: CustomColors.geraldine,width: 1),
                              borderRadius: const BorderRadius.all(Radius.circular(24))
                          ),
                          child: Text(news.category,
                              style: TextStyles.textStyleSourceSansPro(
                                  fontSize: 10,
                                  color: CustomColors.geraldine,
                                  fontWeight: FontWeight.w600,
                                  height: 10/10
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children:[
                            Container(
                              //color: Colors.greenAccent,
                              width: 16,
                              height: 16,
                              padding: EdgeInsets.all(2),
                              child:SvgPicture.asset('resources/svg/like.svg',),
                            ),
                            const SizedBox(width: 4,),
                            Text('${news.likes}k',
                                style: TextStyles.textStyleSourceSansPro(
                                    fontSize: 10,
                                    color: CustomColors.pickledBluewood,
                                    fontWeight: FontWeight.w600,
                                    height: 1
                                )
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              //color: Colors.greenAccent,
                              width: 16,
                              height: 16,
                              padding: EdgeInsets.all(2),
                              child:SvgPicture.asset('resources/svg/comments.svg',),
                            ),
                            const SizedBox(width: 4,),
                            Text('${news.comments}k',
                                style: TextStyles.textStyleSourceSansPro(
                                    fontSize: 10,
                                    color: CustomColors.pickledBluewood,
                                    fontWeight: FontWeight.w600,
                                    height: 1
                                )
                            ),
                          ]
                      ),
                      // const SizedBox(width: 40,),
                      //Expanded(child: null),
                      Container(
                        //color: Colors.greenAccent,
                        //margin: const EdgeInsets.only(left: double.infinity),
                        width: 16,
                        height: 16,
                        padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                        child:SvgPicture.asset('resources/svg/bookmark.svg',),
                      ),
                    ],
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}