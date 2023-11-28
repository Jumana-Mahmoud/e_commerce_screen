import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/label_widget.dart';

class SpecialItems extends StatelessWidget {
  const SpecialItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LabelText(
          text: 'Special for you',
        ),
        _ItemsList(),
      ],
    );
  }
}

class _ItemsList extends StatelessWidget {
  _ItemsList();

  final List<String> imageText = [
    'Computers',
    'Phones & Accessories',
  ];

  final List<String> imagePaths = [
    'assets/images/laptops.png',
    'assets/images/phones.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
            ),
            margin: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Image.asset(
                  imagePaths[index],
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      imageText[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.minorTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
