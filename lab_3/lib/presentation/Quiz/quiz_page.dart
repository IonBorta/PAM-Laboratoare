import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab_3/presentation/Quiz/widgets/answers.dart';
import 'package:lab_3/presentation/Quiz/widgets/next_button.dart';
import 'package:lab_3/presentation/Quiz/widgets/question.dart';
import 'package:lab_3/presentation/Quiz/widgets/timer.dart';

import '../../resources/quiz_question.dart';
import '../Stats/stats_page.dart';
//import 'package:flutter/cupertino.dart';


List<QuizQuestion> questions = getQuestion();
class Quiz extends StatefulWidget{

  late int index;

  Quiz({super.key, required this.index,});

  @override
  State<StatefulWidget> createState() => _QuizPlay();

}

class _QuizPlay extends State<Quiz>{


  void goToNextQuestion(int index){
    setState(() {
      widget.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Quiza play ${widget.index}");
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
            children: [
              TimerLeft(index: widget.index,goToNextQuestion: goToNextQuestion,),
              Question(index: widget.index,),
              Answers(index: widget.index,),
              NextButton(index: widget.index, goToNextQuestion: goToNextQuestion,/*secondsLeft: widget.secondsLeft*/)
            ],
          )
        )
    );
  }

}