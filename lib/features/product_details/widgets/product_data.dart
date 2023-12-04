import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';


class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$$price',
          style: const TextStyle(fontSize: 20, color: Palette.secondaryColor),
        ),
        const Spacer(),
        const Icon(Icons.favorite, color: Palette.red),
      ],
    );
  }
}
