import 'package:ecommerce_screen/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductPromotionContainer extends StatelessWidget {
  const ProductPromotionContainer({Key? key, required this.item}) : super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 200,
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Image.asset(
              item.imagePath,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 180,
              child: Text(
                item.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
