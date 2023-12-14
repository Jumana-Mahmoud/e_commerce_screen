import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.item,
     this.trailing,
  });

  final Product item;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 300,
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Image.asset(
              item.imagePath,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '\$${item.price}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Palette.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            trailing ?? Container(),
          ],
        ),
      ),
    );
  }
}
