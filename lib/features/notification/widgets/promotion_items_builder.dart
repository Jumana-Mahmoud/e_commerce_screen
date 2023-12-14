import 'package:ecommerce_screen/domain/entities/product.dart';
import 'package:ecommerce_screen/features/notification/widgets/promotion_item_container.dart';
import 'package:flutter/material.dart';


class PromotionsBuilder extends StatelessWidget {
   PromotionsBuilder({super.key});

  final List<Product> itemData = [
    Product(
      name: 'Macbook "22 Air',
      price: 2800.0,
      description: 'Where featherweight design meets heavy weight performance, '
          'elevating your computing experience to new heights',
      imagePath: 'assets/images/macbook.png',
    ),
    Product(
      name: 'Iphone 14 ProMax',
      price: 1459.0,
      description: 'Elevate your world with the iPhone 14 Pro Max, '
          'where revolutionary technology meets unparalleled sophistication "',
      imagePath: 'assets/images/iphone.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: itemData.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductPromotionContainer(item: itemData[index],);
        },
      ),
    );
  }
}
