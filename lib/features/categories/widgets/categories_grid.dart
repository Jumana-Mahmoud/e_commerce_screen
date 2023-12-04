import 'package:flutter/cupertino.dart';

import '/core/widgets/category_container.dart';

class CategoriesGrid extends StatelessWidget {
  CategoriesGrid({super.key});

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
      height: 500,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryContainer(
            imageText: imageText[index],
            imagePath: imagePaths[index],
            width: 160,
          );
        },
      ),
    );
  }
}
