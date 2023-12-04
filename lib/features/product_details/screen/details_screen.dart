import 'package:flutter/material.dart';

import '../widgets/add_to_cart_btn.dart';
import '../widgets/details_screen_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {super.key,
      required this.name,
      required this.price,
      required this.description,
      required this.imagePath});

  final String name;

  final double price;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailBody(
          name: name,
          price: price,
          imagePath: imagePath,
          description: description,
        ),
        bottomNavigationBar: const AddToCartBtn());
  }
}
