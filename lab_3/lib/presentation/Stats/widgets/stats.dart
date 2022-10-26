import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_3/presentation/Quiz/quiz_page.dart';
import 'package:lab_3/presentation/Start/start_page.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';

class StatsResult extends StatelessWidget{
  StatsResult({super.key});


  int finalScore = 0;
  int correctAnswers = 0;
  int listLength = 0;

  @override
  Widget build(BuildContext context) {

    if(timeToCompleteQuiz.startNow.minute <= timeToCompleteQuiz.stopNow.minute){
      if(timeToCompleteQuiz.startNow.second <= timeToCompleteQuiz.stopNow.second) {
        timeToCompleteQuiz.completedInMinutes = timeToCompleteQuiz.stopNow.minute - timeToCompleteQuiz.startNow.minute;
        timeToCompleteQuiz.completedInSeconds = timeToCompleteQuiz.stopNow.second - timeToCompleteQuiz.startNow.second;
      }
      else{
        timeToCompleteQuiz.completedInMinutes = timeToCompleteQuiz.stopNow.minute - timeToCompleteQuiz.startNow.minute - 1;
        timeToCompleteQuiz.completedInSeconds = (60 - timeToCompleteQuiz.startNow.second) + timeToCompleteQuiz.stopNow.second;
      }
    }
    else{
      if(timeToCompleteQuiz.startNow.second <= timeToCompleteQuiz.stopNow.second) {
        timeToCompleteQuiz.completedInMinutes = timeToCompleteQuiz.stopNow.minute + (60 - timeToCompleteQuiz.startNow.minute);
        timeToCompleteQuiz.completedInSeconds = timeToCompleteQuiz.stopNow.second - timeToCompleteQuiz.startNow.second;
      }
      else{
        timeToCompleteQuiz.completedInMinutes = timeToCompleteQuiz.stopNow.minute + (60 - timeToCompleteQuiz.startNow.minute) - 1;
        timeToCompleteQuiz.completedInSeconds = (60 - timeToCompleteQuiz.startNow.second) + timeToCompleteQuiz.stopNow.second;
      }
    }

    for(var q in questions){
      if(q.score > 0) correctAnswers++;
      finalScore += q.score;
      listLength++;
    }
    //corectAnswers =

    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20),
      //color: Colors.red,
      width: 294,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //height: 48,
            width: 78,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Score",
                  style: TextStyles.textStyleSfProText12(
                      color: CustomColors.gray,fontWeight: FontWeight.w500,height: 1.66
                  )
                ),
                Text("${finalScore}/${listLength*2}",
                    style: TextStyles.textStyleSfProText18(
                        color: Colors.black,fontWeight: FontWeight.w600,height: 1.33
                    )
                )
              ],
            ),
          ),
          Container(
            width: 78,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Correct",
                  style: TextStyles.textStyleSfProText12(
                      color: CustomColors.gray,fontWeight: FontWeight.w500,height: 1.66
                  )
                ),
                Text("${correctAnswers}/${listLength}",
                    style: TextStyles.textStyleSfProText18(
                        color: Colors.black,fontWeight: FontWeight.w600,height: 1.33
                    )
                )
              ],
            ),
          ),
          Container(
            width: 78,
            //margin: EdgeInsets.only(right: 10),
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Completed in",
                    style: TextStyles.textStyleSfProText12(
                        color: CustomColors.gray,fontWeight: FontWeight.w500,height: 1.66
                    )
                ),
                Text("${timeToCompleteQuiz.completedInMinutes}m ${timeToCompleteQuiz.completedInSeconds}s",
                    style: TextStyles.textStyleSfProText18(
                        color: Colors.black,fontWeight: FontWeight.w600,height: 1.33
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}