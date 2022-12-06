
import 'package:flutter/material.dart';

import '../../../module/featured.dart';
import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';

class FeaturedItem extends StatelessWidget{

  final Featured featured;

  const FeaturedItem({super.key, required this.featured});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //height: 156,
        padding: EdgeInsets.only(bottom: 24,left: 12,right: 12),
        width: 310,
        decoration: BoxDecoration(
            image: DecorationImage(
                //opacity: 0.9,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.color),
                image: NetworkImage(
                  //images[index]
                    featured.cover
                ),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(24)
        ),
        //color: Colors.amber[colorCodes[index]],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(featured.title,
                textWidthBasis: TextWidthBasis.parent,
                //softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.textStyleSourceSansPro(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 28/18
                )
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 10,horizontal: 16)),
                //foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      //side: BorderSide(color: Colors.red)
                    )
                ),
                fixedSize: MaterialStateProperty.all<Size>(const Size(93,36)),
                backgroundColor: MaterialStateProperty.all<Color>(CustomColors.geraldine),
                //alignment: Alignment.bottomLeft
              ),
              onPressed: () {  },
              child: Text("Read now",
                  //overflow: TextOverflow.ellipsis,
                  style: TextStyles.textStyleSourceSansPro(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      height: 16/14
                  )
              ),
            ),
          ],
        )
    );
  }

}