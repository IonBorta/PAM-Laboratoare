import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_3/presentation/Quiz/widgets/question.dart';
import 'package:lab_3/resources/answer_container.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/quiz_question.dart';
import '../../../resources/text_styles.dart';
import '../quiz_page.dart';

class Answers extends StatefulWidget{
  const Answers({super.key, required this.index});

  final int index;

  @override
  State<StatefulWidget> createState() => _Answers();

}
int? value;
class _Answers  extends State<Answers>{

  changeValue(int? current){
    setState(() {
      value = current;
      //if()
      //prevValue = value;
      debugPrint("From change value that's : " + value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("answers ${widget.index}");
    debugPrint("From answers value = ${value}");
    // TODO: implement build

    List<QuizAnswer> answers = questions[widget.index].answerList;

    if(value != null){
      if(answers[value!].isCorrect){
       questions[widget.index].score  = 2;
      }
      else {
        questions[widget.index].score = 0;
      }
    }
    else {
      questions[widget.index].score = 0;
    }

    return Container(
      //color: Colors.pink,
      height: 264,
      width: 342,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for ( var i in answers ) AnswerContainer(txt: i.answerText, index: answers.indexOf(i),change: changeValue,value: value,)
        ],
      ),
    );
  }
}

class AnswerContainer extends StatefulWidget{

  final String txt;
  final int index;
  final int? selectButton;
  final Function change;
  final int? value;


  const AnswerContainer({super.key,required this.txt,required this.index, this.selectButton, required this.change, this.value});

  @override
  State<StatefulWidget> createState() => _AnswerContainer();

}
class _AnswerContainer extends State<AnswerContainer>{

  @override
  Widget build(BuildContext context) {
    debugPrint("From answContainer value = ${widget.value}");
    // TODO: implement build
    return Container(
        height: 54,
        //color: Colors.blueAccent,
        //padding: EdgeInsets.only(left: 24,top: 16,right: 17,bottom: 16),
        decoration: BoxDecoration(
            border: Border.all(
                color: widget.value == widget.index? const Color(0xFF1AACFE) : Colors.white,
                width: 2
            ),
            borderRadius: BorderRadius.circular(16.0)
        ),
        child: RadioListTile(
            dense: true,
            title: Text(widget.txt,
                style: TextStyles.textStyleSfProText14(
                    color: widget.value == widget.index? CustomColors.shark : CustomColors.boulder,fontWeight: FontWeight.w600,height: 1.57
                )
            ),
            value: widget.index,
            groupValue: widget.value,
            controlAffinity: ListTileControlAffinity.trailing,
            onChanged:(current) {
              widget.change(current);
            }//(current){ changeValue(current);}
        )
    );
  }
}