import 'package:ecommerce_screen/domain/entities/product.dart';
import 'package:flutter/material.dart';
import '../../features/product_details/screen/details_screen.dart';
import '../style/colors.dart';

class ItemList extends StatelessWidget {
  ItemList({Key? key});

  final List<Product> itemData = [
    Product(
      name: 'Bluetooth \nPrinter',
      price: 200.75,
      description: '한국의 프린터를 소개합니다. 이 프린터는 정밀한 공학과 '
          '기술적 솜씨의 경이로움을 잘 혼합한 제품입니다. ',
      imagePath: 'assets/images/printer.png',
    ),
    Product(
      name: 'Macbook "22 \nAir',
      price: 2800.0,
      description: 'Where featherweight design meets heavyweight performance, '
          'elevating your computing experience to new heights',
      imagePath: 'assets/images/macbook.png',
    ),
    Product(
      name: 'Iphone 14 \nProMax',
      price: 1459.0,
      description: 'Elevate your world with the iPhone 14 Pro Max, '
          'where revolutionary technology meets unparalleled sophistication "',
      imagePath: 'assets/images/iphone.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemData.length,
        itemBuilder: (BuildContext context, int index) {
          return buildItemCard(context, itemData[index]);
        },
      ),
    );
  }

  Widget buildItemCard(BuildContext context, Product item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                  name: item.name,
                  price: item.price,
                  description: item.description,
                  imagePath: item.imagePath,
                ),
              ),
            );
          },
          child: Card(
            elevation: 3,
            child: Stack(
              children: [
                Image.asset(
                  item.imagePath,
                  width: 100,
                  height: 120,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      color: Palette.primaryColor,
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Palette.secondaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        _ItemInfoWidget(item),
      ],
    );
  }
}

class _ItemInfoWidget extends StatelessWidget {
  final Product item;

  const _ItemInfoWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.name,
          style: const TextStyle(
            fontSize: 14,
            color: Palette.mainTextColor,
          ),
        ),
        Text(
          '\$${item.price}',
          style: const TextStyle(
            fontSize: 14,
            color: Palette.secondaryColor,
          ),
        ),
      ],
    );
  }
}
