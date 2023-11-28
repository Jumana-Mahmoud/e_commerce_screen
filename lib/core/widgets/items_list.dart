import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class ItemsList extends StatelessWidget {
  ItemsList({super.key});

  final List<Widget> itemData = const [
    _ItemInfo(
      name: 'Bluetooth \nPrinter',
      price: 200.75,
    ),
    _ItemInfo(
      name: 'Macbook "22 \nAir',
      price: 2800.0,
    ),
    _ItemInfo(
      name: 'Iphone 14 \nProMax',
      price: 1459.0,
    ),
    _ItemInfo(
      name: 'Computers ',
      price: 4695.0,
    ),
  ];
  final List<String> itemsImage = [
    'assets/images/printer.png',
    'assets/images/macbook.png',
    'assets/images/iphone.png',
    'assets/images/laptops.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemsImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          itemsImage[index],
                          width: 100,
                          height: 120,
                          // fit: BoxFit.,
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
                itemData[index],
              ],
            );
          }),
    );
  }
}

class _ItemInfo extends StatelessWidget {
  const _ItemInfo({required this.name, required this.price});

  final String name;

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(name,
            style: const TextStyle(
              fontSize: 14,
              color: Palette.mainTextColor,
            )),
        Text('\$$price',
            style: const TextStyle(
              fontSize: 14,
              color: Palette.secondaryColor,
            )),
      ],
    );

  }
}