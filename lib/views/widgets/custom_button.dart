import 'package:flutter/material.dart';
import 'package:gradproject/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.hint, this.color, this.backgroundColor,
  });
final String hint;
final Color? color;
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor
      ),
          
      onPressed: (){}, child: Text(hint,style: TextStyle(fontFamily: font,color: color,fontSize: 20),));
  }
}