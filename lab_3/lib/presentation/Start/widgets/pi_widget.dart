import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab_3/resources/custom_colors.dart';
import 'package:lab_3/resources/svg_assets.dart';

class PiWidget extends StatelessWidget {
  //final String title;
  //final SvgPicture icon;

  const PiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 358,
      width: 358,
      margin: const EdgeInsets.only(top: 16.0),
      //width: MediaQuery.of(context).size.width,
      // decoration: BoxDecoration(
      //   color: CustomColors.bridalHealth,
      //   borderRadius: const BorderRadius.all(
      //     Radius.circular(32),
      //   ),
      // ),
      //margin: const EdgeInsets.,
      child: Column(
          children: [
            Expanded(
                child: SvgPicture.asset('resources/svg/pi_day.svg',),
          )
          ]
      )
    );
  }
}