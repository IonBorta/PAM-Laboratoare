import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_3/presentation/Quiz/widgets/question.dart';
import 'package:lab_3/presentation/Quiz/widgets/timer.dart';
import 'package:lab_3/presentation/Start/start_page.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';
import '../../Stats/stats_page.dart';
import '../quiz_page.dart';
import 'answers.dart';

class NextButton extends StatelessWidget{

  late int index;
  final Function goToNextQuestion;

  NextButton({super.key, required this.index, required this.goToNextQuestion});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
            value = null;
            time?.cancel();
            index == questions.asMap().length - 1 ?
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => /*(widget.index) == 3?*/ const Stats() /*: Quiz(index: ++widget.index,*//*secondsLeft: widget.secondsLeft,*//*)*/
                )
            )//;
            : goToNextQuestion(++index);
          },
          child: Text(
              "Next",
              style: TextStyles.textStyleSfProText14(
                  color: CustomColors.white,fontWeight: FontWeight.w500,height: 1.57) ),
        )
    );
  }

}
// class NextButton extends StatefulWidget{
//
//   late int index;
//   final Function goToNextQuestion;
//   //late int secondsLeft;
//
//   NextButton({super.key, required this.index, required this.goToNextQuestion, /*required this.secondsLeft*/});
//
//   @override
//   State<StatefulWidget> createState() => _NextButton();
//
// }
//
// class _NextButton extends State<NextButton>{
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("Next btn ${widget.index}");
//     // TODO: implement build
//     return Container(
//         width: 280,
//         height: 46,
//         margin: EdgeInsets.only(top: 32.0),
//         child:TextButton(
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all(
//                 RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16.0),
//                 )
//             ),
//             backgroundColor: MaterialStatePropertyAll<Color>(CustomColors.shark),
//             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//           ),
//           onPressed:() {
//             value = null;
//             time?.cancel();
//             widget.index == 3 ?
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => /*(widget.index) == 3?*/ const Stats() /*: Quiz(index: ++widget.index,*//*secondsLeft: widget.secondsLeft,*//*)*/
//                 )
//             )//;
//             : widget.goToNextQuestion(++widget.index);
//           },
//           child: Text(
//               "Next",
//               style: TextStyles.textStyleSfProText14(
//                   color: CustomColors.white,fontWeight: FontWeight.w500,height: 1.57) ),
//         )
//     );
//   }
//
// }
