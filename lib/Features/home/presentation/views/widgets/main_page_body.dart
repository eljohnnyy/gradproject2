import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/app_bar_view.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/service_image.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
  child: Column(children: [
    AppBarView(text: 'استطلع', icon: Icons.menu,),
    ServiceImage(),
  ],),
),

    );
  }
}