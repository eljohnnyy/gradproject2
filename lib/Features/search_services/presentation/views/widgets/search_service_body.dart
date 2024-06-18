import 'package:flutter/material.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/app_bar_view.dart';
import 'package:gradproject/core/utls/widget/custom_text_feild.dart';


class SearchServiceBody extends StatefulWidget {
  const SearchServiceBody({super.key});

  @override
  State<SearchServiceBody> createState() => _SearchServiceBodyState();
}

class _SearchServiceBodyState extends State<SearchServiceBody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


body: Column(
  children: [
 Padding(
   padding:const  EdgeInsets.symmetric(vertical: 20,horizontal: 10),
   child: AppBarView(
                    text: 'البحث',
                    icon: Icons.arrow_forward,
                    onPressed: () {
                      Navigator.pop(context);
                       FocusScope.of(context).unfocus();
                    },
                  ),
 ),
const SingleChildScrollView(
   child: Padding(
     padding: EdgeInsets.symmetric(horizontal: 25),
     child: Column(
          children: [
             
                 CustomTextField(foucs: true,),
                 
          ],
        ),
   ),
 ),
  ],
),


    );
  }
}