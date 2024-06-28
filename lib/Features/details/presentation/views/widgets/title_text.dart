import 'package:flutter/material.dart';
import 'package:gradproject/const.dart';
import 'package:gradproject/core/utls/widget/utils.dart';


class TitleText extends StatelessWidget {
  final String titleText;
  final String titleIcon;
  const TitleText({super.key, required this.titleText, required this.titleIcon});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(titleIcon, height: 30,),
            ),

            Text(
              firstName(titleText),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: purple
              ),
            ),

            Text(
                lastName(titleText),
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                )
            ),
          ]
      ),
    );
  }

}