import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_3/presentation/Start/widgets/pi_widget.dart';
import 'package:lab_3/resources/custom_colors.dart';
import 'package:lab_3/resources/stats_data.dart';
import 'package:lab_3/resources/svg_assets.dart';
import 'package:lab_3/resources/strings.dart';

import '../../resources/text_styles.dart';
import '../Quiz/quiz_page.dart';

TimeData timeToCompleteQuiz = TimeData();

class HomePage extends StatelessWidget{
  const HomePage({super.key,});


  @override
  Widget build(BuildContext context) {
    int index = 0;
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:Container(
          alignment: Alignment.center,
          // //color: CustomColors.white,
          // color: Colors.lightGreen,
          child: Column(
            children: [
              //const PiWidget(),
              Container(
                height: 358,
                width: 358,
                margin: const EdgeInsets.only(top: 16.0),

                child: Column(
                    children: [
                      Expanded(
                        child: SvgPicture.asset('resources/svg/pi_day.svg',),
                      )
                    ]
                )
              ),
              Container(
                // color: Colors.amber,
                width: 217,
                height: 112,
                margin: const EdgeInsets.only(top: 44.0),
                child: Text(
                  Strings.mathForEveryone,
                  textAlign: TextAlign.center,
                  style: TextStyles.textStyleSfProText48(
                      color: CustomColors.shark,
                      fontWeight: FontWeight.w600,
                      height: 1.16
                  )
                ),
              ),
              Container(
                width: 280,
                height: 46,
                margin: EdgeInsets.only(top: 32.0),
                child:TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          )
                      ),
                      backgroundColor: MaterialStatePropertyAll<Color>(CustomColors.shark),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed:() {
                    // _startCountDown();
                    timeToCompleteQuiz.startNow = DateTime.now();
                    debugPrint("${timeToCompleteQuiz.startNow}");
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Quiz(index: index,/*secondsLeft: secondsLeft,*/)
                        )
                    );
                  },
                  child: Text(
                    Strings.start,
                    style: TextStyles.textStyleSfProText14(
                              color: CustomColors.white,fontWeight: FontWeight.w500,height: 1.57)
                    ),
                  )
                ),
            ],
          ),
        ),
      )
    );
  }
}