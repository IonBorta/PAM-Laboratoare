
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_3/presentation/Start/start_page.dart';
import 'package:lab_3/presentation/Stats/widgets/newGame_or_leave.dart';
import 'package:lab_3/presentation/Stats/widgets/new_rating.dart';
import 'package:lab_3/presentation/Stats/widgets/stats.dart';

import '../Quiz/widgets/timer.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {

    timeToCompleteQuiz.stopNow = DateTime.now();
    debugPrint(timeToCompleteQuiz.stopNow.toString());
    //timeForCompleted.completed = timeForCompleted.startNow - timeForCompleted.stopNow;
    // TODO: implement build

    return Scaffold(
      body: Center(
        child: Container(
          width: 342,
          height: 318,
          //color: Colors.greenAccent,
          child: Column(
            children: [
              const NewRating(),
              StatsResult(),
              const Buttons()
            ],
          ),
        ),
      ),
    );
  }
}