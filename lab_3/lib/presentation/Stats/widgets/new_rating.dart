import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';

class NewRating extends StatelessWidget{
  const NewRating({super.key});


  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 24),
      //color: Colors.red,
      height: 70,
      width: 78,
      child: Column(
        children: [
          Text("New Rating",
              style: TextStyles.textStyleSfProText14(
                  color: CustomColors.gray,fontWeight: FontWeight.w500,height: 1.57
              )
              ),
          SizedBox(
            height: 8,
          ),
          Text("425",
              style: TextStyles.textStyleSfProText32(
                color: Colors.black,fontWeight: FontWeight.w600,height: 1.25)
              ),
        ],
      ),
    );
  }

}