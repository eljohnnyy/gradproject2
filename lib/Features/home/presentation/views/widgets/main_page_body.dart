import 'package:flutter/material.dart';
import 'package:gradproject/Features/home/data/models/category_model.dart';
import 'package:gradproject/Features/home/presentation/views/search_category.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/app_bar_view.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/custom_list_view.dart';


import 'package:gradproject/core/utls/widget/custom_text_feild.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  State<MainPageBody> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            const AppBarView(
              text: 'استطلع',
              icon: Icons.menu,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: CustomTextField(
                foucs: false,
                onTap: () {
                  Navigator.pushNamed(context, SearchCategory.searchCategoryId);
                },
              ),
            ),
            const SizedBox(height: 50), 
         const Expanded(child:   CutomListView(categories: Category.categories)),
          ],
        ),
      ),
    );
  }
}

