import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_3/presentation/Start/start_page.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';

class Buttons extends StatelessWidget{
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Container(
              width: 294,
              height: 46,
              margin: EdgeInsets.only(top: 24.0),
              child:TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(CustomColors.white),
                ),
                onPressed:() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()
                      )
                  );
                },
                child: Text(
                    "Leave",
                    style: TextStyles.textStyleSfProText14(
                        color: Colors.black,fontWeight: FontWeight.w600,height: 1.57) ),
              )
          ),
          Container(
              width: 294,
              height: 46,
              margin: EdgeInsets.only(top: 16.0),
              child:TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )
                  ),
                  backgroundColor: MaterialStatePropertyAll<Color>(CustomColors.shark),
                ),
                onPressed:() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()
                      )
                  );
                },
                child: Text(
                    "New Game",
                    style: TextStyles.textStyleSfProText14(
                        color: CustomColors.white,fontWeight: FontWeight.w500,height: 1.57) ),
              )
          )
        ],
      ),
    );
  }

}