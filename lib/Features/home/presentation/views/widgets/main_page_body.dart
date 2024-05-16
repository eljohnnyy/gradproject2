
import 'package:flutter/material.dart';
import 'package:gradproject/Features/home/data/models/category_model.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/app_bar_view.dart';
import 'package:gradproject/Features/home/presentation/views/widgets/service_image.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  State<MainPageBody> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> {
   final List<Category> categories = const [
    Category(
      id: 1,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREmaRtPeXW39hx9xYYgNmVLGpqIafJUYwDNg&s',
      name: 'معامل تحاليل',
    ),
    Category(
      id: 2,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFYGR9E4eLktrvpCeoS9N7VafEF5npvnW4zA&s',
      name: 'صيدليات',
    ),
     Category(
      id: 3,
      imageUrl:
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEmTokcY-ssy44ykysFt3gKSWjKtwlvq3Y5g&s',
      name: 'دكاتره',
    ),
    Category(
      id: 4,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo8dYljt_z0X12FoBlTG3JQ-utUTelcYbffw&s',
      name: 'بلاستيشن',
    ),
   
    Category(
      id: 5,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrD7tFDch_wzVpRKJb9hpzs3eX2WBitjTZ3w&s',
      name: 'مطاعم',
    ),
    Category(
      id: 6,
      imageUrl:
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKxzdJsDtpaiPkb4F-OevoHZfdtY5URsfjUw&s',
      name: 'سوبر ماركت',
    ),
    Category(
      id: 7,
      imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIOqyIB9op-Cq_Z_IhZwE7VPGrWl2NMY7Png&s',
      name: 'ورك سبيس',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const AppBarView(
              text: 'استطلع',
              icon: Icons.drag_handle,
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ServiceImage(category: categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}