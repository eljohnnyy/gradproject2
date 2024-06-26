import 'package:flutter/material.dart';
import 'package:gradproject/Features/details/presentation/views/widgets/custom_grid_view.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/app_bar_view.dart';
import 'package:gradproject/Features/search_services/presentation/views/search_service.dart';

import 'package:gradproject/core/utls/widget/custom_text_feild.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});
  static const detailsBodyId = "details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Unfocus the keyboard
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppBarView(
                text: 'الخدمات',
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomTextField(
                foucs: false,
                onTap: () {
                  Navigator.pushNamed(context, SearchService.serviceSearchId);
                },
              ),
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: CustomGridView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
