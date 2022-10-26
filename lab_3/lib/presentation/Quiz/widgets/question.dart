

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/quiz_question.dart';
import '../../../resources/text_styles.dart';
import '../quiz_page.dart';

class Question extends StatelessWidget{
  Question({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    debugPrint("Question ${index}");
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 80,bottom: 24),
      //color: Colors.purple,
      height: 118,
      width: 342,
      child: Column(
        children: [
          Container(
            height: 22,
            width: 118,
            margin: EdgeInsets.only(bottom: 8,right: 342 - 118),
            //margin: EdgeInsets.only(right: 342 - 118),
            //color: Colors.indigo,
            child: Text("Question ${index + 1} of ${questions.asMap().length}",
                style: TextStyles.textStyleSfProText14(
                    color: CustomColors.boulder,
                    fontWeight: FontWeight.w500,
                    height: 1.57
                ),
            ),
          ),
          Container(
            height: 88,
            width: 342,
            //color: Colors.brown,
            child: Text(questions[index].questionText/*"A letter lock consists of three rings, each marked with ten different letters. In how many ways is it possible to make an unsuccessful attempt to open the lock?"*/,
              style: TextStyles.textStyleSfProText14(
                  color: CustomColors.shark,
                  fontWeight: FontWeight.w500,
                  height: 1.57
              ),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}