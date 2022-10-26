//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:lab_3/presentation/Start/start_page.dart';
// import 'package:lab_3/resources/quiz_question.dart';
// import 'package:lab_3/resources/text_styles.dart';
//
// import 'custom_colors.dart';
//
//
// class AnswerContainer extends StatefulWidget{
//
//   final String txt;
//   final int index;
//   final int? selectButton;
//   final Function change;
//   final int? value;
//
//   //final List<QuizAnswer> answerList;
//
//   const AnswerContainer({super.key,required this.txt,required this.index, this.selectButton, required this.change, this.value});
//
//   @override
//   State<StatefulWidget> createState() => _AnswerContainer();
//
// }
// //enum SingingCharacter { lafayette, jefferson }
// class _AnswerContainer extends State<AnswerContainer>{
//   // int? _value = -1;
//   //int? value;
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   // TODO: implement initState
//   //   value = 0;
//   // }
//   //SingingCharacter? _character;// = SingingCharacter.values[this.index];
//
//   // changeValue(int? current){
//   //   setState(() {
//   //     value = current;
//   //     //_Answers();
//   //     debugPrint(value.toString());
//   //   });
//   // }
//
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("From answContainer value = ${widget.value}");
//     //List<QuizQuestion> questions = getQuestion();
//     //List<QuizAnswer> answers = questions[widget.index].answerList;
//     //answers[0].
//     // TODO: implement build
//     return Container(
//         height: 54,
//         //color: Colors.blueAccent,
//         //padding: EdgeInsets.only(left: 24,top: 16,right: 17,bottom: 16),
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: widget.value == widget.index? const Color(0xFF1AACFE) : Colors.white,//const Color(0xFF1AACFE),// == Color(0xFF1AACFE)? borderColor : Colors.red.shade50,
//                 width: 2
//             ),
//             borderRadius: BorderRadius.circular(16.0)
//         ),
//         child: RadioListTile(
//           dense: true,
//           //tileColor: Colors.pink,
//           //selectedTileColor: Colors.white,
//               //activeColor: Colors.red,
//               title: Text(widget.txt,
//                   style: TextStyles.textStyleSfProText14(
//                       color: widget.value == widget.index? CustomColors.shark : CustomColors.boulder,fontWeight: FontWeight.w600,height: 1.57
//                   )
//               ),
//             //selected: false,
//             //toggleable: true,
//             value: widget.index,
//             groupValue: widget.value,
//             controlAffinity: ListTileControlAffinity.trailing,
//             onChanged:(current) {
//                 widget.change(current);
//                 // if(answers[widget.index].isCorrect){
//                 //   questions[]
//                 // }
//               }//(current){ changeValue(current);}
//         )
//         // child: RadioListTile<>(
//         //   //selectedTileColor: Color(0xFF1AACFE) ,
//         //     //selected: true,
//         //     title: Text(widget.txt,
//         //         style: TextStyles.textStyleSfProText14(
//         //             color: CustomColors.shark,fontWeight: FontWeight.w600,height: 1.57
//         //         )
//         //     ),
//         //     controlAffinity: ListTileControlAffinity.trailing,//**this will help align the control to the right**
//         //     value: SingingCharacter.values[widget.index],
//         //     groupValue: widget.selectButton,
//         //     onChanged: (SingingCharacter? value) {
//         //       setState(() {
//         //         _character = value;
//         //         //borderColor = Color(0xFF1AACFE);
//         //       }
//         //       );
//         //     }
//         // )
//     );
//   }
// }
