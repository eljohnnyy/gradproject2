import 'package:awesome_icons/awesome_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gradproject/const.dart';

class ServiceImage extends StatelessWidget {
  const ServiceImage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/shop.jpg',
                height: 500,
                width: MediaQuery.of(context).size.width * .7,
                fit: BoxFit.fill,
              )),
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width * .7,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16)),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'مطاعم',
              style: TextStyle(
                  fontFamily: font,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const Positioned(
              bottom: -40,
              right: -25,
              child: CircleAvatar(
                backgroundColor: purple,
                radius: 60,
                child: Center(
                  child: Icon(
                                    Icons.east,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                ),
              ))
        ],
      ),
    );
  }
}
