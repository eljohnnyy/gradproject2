import 'package:flutter/material.dart';



class AppBar extends StatelessWidget {
  const AppBar({
    super.key, required this.text,required this.icon, this.onPressed
  });
final String text;
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Image.asset('assets/images/logo.png',width: 100,),
       SizedBox(width: MediaQuery.of(context).size.width*.2,),
      Text(text),
     IconButton(onPressed: onPressed, icon:  Icon(icon,size: 50,))
      ],
    );
  }
}
