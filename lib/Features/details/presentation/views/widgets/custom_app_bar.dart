import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradproject/Features/details/presentation/views/widgets/title_text.dart';
import 'package:gradproject/const.dart';
import 'package:gradproject/core/utls/widget/assets.dart';



class CustomAppBar extends StatelessWidget {
  final String titleText;
  final String titleIcon;

  const CustomAppBar({super.key, required this.titleText, required this.titleIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           IconButton(
          onPressed: () {
             Navigator.of(context).pop();
          },
           iconSize: 40,
              color: Colors.black,
          icon:const Icon(Icons.arrow_forward),
        ),
           Text(
          titleText,
          style: const TextStyle(
              fontFamily: font, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Image.asset('assets/images/logo1.png',  width: 30,),

      

     
      ],
    );
  }

}