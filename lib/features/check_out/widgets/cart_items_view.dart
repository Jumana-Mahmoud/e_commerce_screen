import 'package:flutter/material.dart';

class CartItemsView extends StatelessWidget {
   CartItemsView({super.key, });
  final List items = [
    'assets/images/printer.png',
    'assets/images/macbook.png',
    'assets/images/iphone.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return buildItemCard( items[index]);
        },
      ),
    );
  }

  Widget buildItemCard(item){
    return Card(
      elevation: 3,
      child:
          Image.asset(
            item,
            width: 100,
            height: 120,
          ),
    );
  }
}
