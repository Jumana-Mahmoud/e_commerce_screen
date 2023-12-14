import 'package:ecommerce_screen/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductPromotionContainer extends StatelessWidget {
  const ProductPromotionContainer(
      {Key? key,
      required this.icon,
      required this.orderDesc,
      required this.orderStatus,
      required this.time})
      : super(key: key);

  final IconData icon;
  final String orderDesc;
  final String orderStatus;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 350,
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(icon),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
              child: SizedBox(
                width: 240,
                child: Column(
                  children: [
                    Text(
                      orderStatus,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      orderDesc,
                      maxLines: 3,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
