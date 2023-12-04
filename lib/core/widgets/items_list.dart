import 'package:flutter/material.dart';

import '../../features/product_details/screen/details_screen.dart';
import '../style/colors.dart';


class ItemsList extends StatelessWidget {
  ItemsList({Key? key});

  final List<_ItemInfo> itemData = const [
    _ItemInfo(
      name: 'Bluetooth \nPrinter',
      price: 200.75,
      description:  '한국의 프린터를 소개합니다. 이 프린터는 정밀한 공학과  '
          '기술적 솜씨의 경이로움을 잘 혼합한 제품입니다. ',
    ),
    _ItemInfo(
      name: 'Macbook "22 \nAir',
      price: 2800.0,
      description: 'Where featherweight design meets heavyweight performance,elevating your computing experience to new heights',
    ),
    _ItemInfo(
      name: 'Iphone 14 \nProMax',
      price: 1459.0,
      description: 'Elevate your world with the iPhone 14 Pro Max,'
          ' where revolutionary technology meets unparalleled sophistication "',
    ),

  ];
  final List<String> itemsImage = [
    'assets/images/printer.png',
    'assets/images/macbook.png',
    'assets/images/iphone.png',
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsScreen(
                        name: itemData[index].name,
                        price: itemData[index].price,
                        description: itemData[index].description,
                        imagePath: itemsImage[index],
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 3,
                  child: Stack(
                    children: [
                      Image.asset(
                        itemsImage[index],
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
              _ItemInfoWidget(itemData[index]),
            ],
          );
        },
      ),
    );
  }
}

class _ItemInfo extends StatelessWidget {
  const _ItemInfo({
    required this.name,
    required this.price,
    required this.description,
  });

  final String name;
  final double price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            color: Palette.mainTextColor,
          ),
        ),
        Text(
          '\$$price',
          style: const TextStyle(
            fontSize: 14,
            color: Palette.secondaryColor,
          ),
        ),
        // Text(
        //   description,
        //   style: const TextStyle(
        //     fontSize: 12,
        //     color: Palette.lightColor,
        //   ),
        // ),
      ],
    );
  }
}

class _ItemInfoWidget extends StatelessWidget {
  final Widget itemWidget;

  const _ItemInfoWidget(this.itemWidget);

  @override
  Widget build(BuildContext context) {
    return itemWidget;
  }
}




//
// class ItemsList extends StatelessWidget {
//   ItemsList({super.key});
//
//   final List<Widget> itemData = const [
//     _ItemInfo(
//       name: 'Bluetooth \nPrinter',
//       price: 200.75,
//     ),
//     _ItemInfo(
//       name: 'Macbook "22 \nAir',
//       price: 2800.0,
//     ),
//     _ItemInfo(
//       name: 'Iphone 14 \nProMax',
//       price: 1459.0,
//     ),
//     _ItemInfo(
//       name: 'Computers ',
//       price: 4695.0,
//     ),
//   ];
//   final List<String> itemsImage = [
//     'assets/images/printer.png',
//     'assets/images/macbook.png',
//     'assets/images/iphone.png',
//     'assets/images/laptops.png',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: itemsImage.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ProductDetailsScreen(
//                           name: itemData[index].name,
//                           price: itemData[index].price,
//                           oldPrice: null, // You need to provide the correct oldPrice value
//                           description: '', // You need to provide the correct description value
//                           imagePath: itemsImage[index],
//                         ),
//                       ),
//                     );
//                   },
//                   child: Card(
//                     elevation: 3,
//                       child: Stack(
//                         children: [
//                           Image.asset(
//                             itemsImage[index],
//                             width: 100,
//                             height: 120,
//                             // fit: BoxFit.,
//                           ),
//                           Positioned(
//                             bottom: 0,
//                             right: 0,
//                             child: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: Container(
//                                 color: Palette.primaryColor,
//                                 child: const Icon(
//                                   Icons.favorite_border_outlined,
//                                   color: Palette.secondaryColor,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                 ),
//                 itemData[index],
//               ],
//             );
//           }),
//     );
//   }
// }
//
// class _ItemInfo extends StatelessWidget {
//   const _ItemInfo({required this.name, required this.price});
//
//   final String name;
//
//   final double price;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(name,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Palette.mainTextColor,
//             )),
//         Text('\$$price',
//             style: const TextStyle(
//               fontSize: 14,
//               color: Palette.secondaryColor,
//             )),
//       ],
//     );
//
//   }
// }