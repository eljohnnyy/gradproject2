import 'package:flutter/material.dart';
import 'package:gradproject/const.dart';

import 'package:gradproject/views/widgets/app_bar_row.dart';
import 'package:gradproject/views/widgets/page_view_builder.dart';

import 'package:gradproject/views/widgets/row_more.dart';
import 'package:gradproject/views/widgets/stack_one.dart';
import 'package:gradproject/views/widgets/stack_three.dart';
import 'package:gradproject/views/widgets/stack_two.dart';
import 'package:gradproject/views/widgets/text_services.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const AppBarRow(),
              const SizedBox(
                height: 40,
              ),
              const StackOne(),
              const Text(
                'كلها بسيطة وسهلة',
                style: TextStyle(fontFamily: font, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/logo2.png'),
              const SizedBox(
                height: 20,
              ),
              const TextServices(),
              const SizedBox(
                height: 20,
              ),
              const RowMore(),
              const SizedBox(
                height: 60,
              ),
            const  StackTwo(),
            const SizedBox(
                height: 120,
              ),
 const StackThree(),
 const SizedBox(
                height: 50,
              ),
        const  Align(
            alignment: Alignment.topRight,
            child:      Text(
                'استطلع',
                style: TextStyle(
                    fontFamily: font,
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),

          ),
            const  Align(
            alignment: Alignment.bottomRight,
            child:      Text(
                'خدماتك',
                style: TextStyle(
                    fontFamily: font,
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              
          ),
          const SizedBox(height: 20,),
        const  PageViewExample()

            ],
          ),
        ),
      ),
    );
  }
}



