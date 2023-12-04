import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {super.key,
      required this.imagePath,
      required this.width,
      required this.imageText});

  final String imagePath;
  final String imageText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          Image.asset(
            imagePath,
            width: width,
            height: 100,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                imageText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Palette.minorTextColor,
                ),
              ),
            ),
          ),
        ],

    );
  }
}
