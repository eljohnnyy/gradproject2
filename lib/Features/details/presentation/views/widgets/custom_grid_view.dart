import 'package:flutter/material.dart';
import 'package:gradproject/Features/details/presentation/views/widgets/service_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
             childAspectRatio: 3 / 4.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
            ),
            itemCount: 8,
        itemBuilder: (context,index){
          return const ServiceItem();
        });
  }
}
