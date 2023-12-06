import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.item,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Image.asset(
          item.imagePath,
          fit: BoxFit.fill,
        ),
        title: Text(
          item.name,
          style: const TextStyle(fontSize: 16),
        ),
        subtitle: Text(
          '\$${item.price}',
          style: const TextStyle(
            fontSize: 14,
            color: Palette.secondaryColor,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_shopping_cart,
            color: Palette.secondaryColor,
          ),
        ),
      ),
    );
  }
}
