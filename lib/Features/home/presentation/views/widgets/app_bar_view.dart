import 'package:flutter/material.dart';
import 'package:gradproject/const.dart';



class AppBarView extends StatelessWidget {
  const AppBarView({
    super.key, required this.text,required this.icon, this.onPressed
  });
final String text;
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
      Image.asset('assets/images/logo.png',width: 70,),
    const  Spacer(),
      Text(text,style: const TextStyle(fontFamily: font,fontSize: 25,fontWeight: FontWeight.bold),),
    const  Spacer(),
     IconButton(onPressed: onPressed, icon:  Icon(icon,size: 40,color: Colors.black,))
      ],
    );
  }
}
