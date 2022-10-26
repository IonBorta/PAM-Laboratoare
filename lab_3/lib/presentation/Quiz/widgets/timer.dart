
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab_3/resources/text_styles.dart';

import '../../../resources/custom_colors.dart';
import '../../Stats/stats_page.dart';
import '../quiz_page.dart';
import 'answers.dart';

class TimerLeft extends StatefulWidget{
  const TimerLeft({super.key, required this.index, required this.goToNextQuestion});
  final int index;
  final Function goToNextQuestion;
  //bool isMount = true;

  @override
  State<StatefulWidget> createState() => _TimerRun();

}

Timer? time;
class _TimerRun extends State<TimerLeft>{

  int? prevIndex;
  int secondsLeft = 40;
  int secondsPerQuestion = 40;

  void startCountDown(){
    time = Timer.periodic(Duration(seconds: 1), (timer){
      //time = timer;
      if(secondsLeft > 0){
        if(!mounted) return;
        setState(() {
          secondsLeft--;
        });
      }
      else{
          timer.cancel();
          //setState(() {
          value = null;
          widget.index == questions.asMap().length - 1 ?
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => /*(widget.index) == 3?*/ const Stats() /*: Quiz(index: ++widget.index,*//*secondsLeft: widget.secondsLeft,*//*)*/
              )
          )//;
          : widget.goToNextQuestion(widget.index+1);
        //});
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    if(prevIndex != widget.index){
      prevIndex = widget.index;
      secondsLeft = secondsPerQuestion;
    }
    if(secondsLeft == secondsPerQuestion) {
      debugPrint("From if secondsLeft = 40 where secondsLeft = ${secondsLeft}");
      startCountDown();
    }
    debugPrint("From timer on ${secondsLeft} second");
    // TODO: implement build
    return Container(
      //color: Colors.deepOrange,
      width: 342,
      height: 38,
      margin: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Container(
            width: 46,
            height: 22,
            //margin: EdgeInsets.only(bottom: 16.0),
            //color: Colors.green,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                        //color: Colors.amber,
                        margin: EdgeInsets.only(left:2.0,top:5.0,right: 6.0,bottom: 5.0),
                        child: SvgPicture.asset(
                          'resources/svg/Vector.svg',
                          height: 12,
                          width: 12,
                        ),
                ),
                Container(
                        //color: Colors.blue.shade50,
                        padding: EdgeInsets.symmetric(vertical: 3.0),
                        //padding: ,
                        width: 26,
                        height: 22,
                        child: Text(
                          secondsLeft > 9 ? "${secondsLeft}s" : " ${secondsLeft}s",
                          style: TextStyles.textStyleSfProText14(
                              color: CustomColors.boulder,fontWeight: FontWeight.w500,/*height: 22/14*/),
                          //textScaleFactor: 1.1,
                        ),

                )
              ],
            ),
          ),
          Container(
            //color: Colors.grey,
            margin: EdgeInsets.only(top: 8),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Container(
                  //margin: EdgeInsets.only(top: 16),
                  width: (342/secondsPerQuestion) * (secondsPerQuestion - secondsLeft),//100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.green,//Colors.blueAccent,
                            width: 4.0
                        )
                    ),
                )
                ]
            )
          )
        ],
      ),
    );
  }
}