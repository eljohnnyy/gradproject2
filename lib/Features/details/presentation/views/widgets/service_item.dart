import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
          height: MediaQuery.sizeOf(context).height * 0.25,
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                  fit: BoxFit.cover,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIOqyIB9op-Cq_Z_IhZwE7VPGrWl2NMY7Png&s')),
        ),
        const SizedBox(height: 10),
        const Text(
          'مطعم',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
