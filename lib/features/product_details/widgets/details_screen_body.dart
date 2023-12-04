import 'package:ecommerce_screen/features/product_details/widgets/product_colors.dart';
import 'package:ecommerce_screen/features/product_details/widgets/product_data.dart';
import 'package:ecommerce_screen/features/product_details/widgets/product_description.dart';
import 'package:ecommerce_screen/features/product_details/widgets/product_image.dart';
import 'package:ecommerce_screen/features/product_details/widgets/product_size.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody(
      {super.key,
      required this.name,
      required this.price,
      required this.imagePath,
        required this.description});

  final String name;

  final double price;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: 0, child: ProductImage(imagePath: imagePath)),
        Positioned(
          top: 270,
          child: Container(
            width: 360,
            height: 660,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductPrice( price: price,),
                  const SizedBox(height: 25),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  ProductDescription(
                    description: description,
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Color',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const ProductColors(),
                  const SizedBox(height: 25),
                  const Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const ProductSize(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
