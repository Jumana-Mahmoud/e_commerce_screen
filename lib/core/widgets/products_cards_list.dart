import 'package:ecommerce_screen/core/widgets/products_container.dart';
import 'package:ecommerce_screen/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductCardsList extends StatelessWidget {
  ProductCardsList({super.key});

  final List<Product> itemData = [
    Product(
      name: 'Bluetooth Printer',
      price: 200.75,
      description: '한국의 프린터를 소개합니다. 이 프린터는 정밀한 공학과 '
          '기술적 솜씨의 경이로움을 잘 혼합한 제품입니다. ',
      imagePath: 'assets/images/printer.png',
    ),
    Product(
      name: 'Macbook "22 Air',
      price: 2800.0,
      description: 'Where featherweight design meets heavyweight performance, '
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
      width: 350,
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: itemData.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductContainer(item: itemData[index]);
        },
      ),
    );
  }
}
