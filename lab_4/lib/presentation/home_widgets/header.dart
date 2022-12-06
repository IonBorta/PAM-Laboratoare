import 'package:flutter/cupertino.dart';

import '../../resources/custom_colors.dart';
import '../../resources/text_styles.dart';

class Header extends StatelessWidget{
  final String text;

  const Header({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( //Featured and See all
      margin: text == "Featured" ?
              const EdgeInsets.only(top: 19)
              : const EdgeInsets.only(top: 22,bottom: 16),
      //color: Colors.pink,
      //width: 358,
      height: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextStyles.textStyleSourceSansPro(
                  fontSize: 20,
                  color: CustomColors.pickledBluewood,
                  fontWeight: FontWeight.w600,
                  height: 24/20
              )
          ),
          Text("See all",
              style: TextStyles.textStyleSourceSansPro(
                  fontSize: 16,
                  color: CustomColors.bittersweet,
                  fontWeight: FontWeight.w600,
                  height: 22/16
              )
          )
        ],
      ),
    );
  }

}