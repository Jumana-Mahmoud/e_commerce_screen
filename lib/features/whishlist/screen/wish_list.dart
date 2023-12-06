import 'package:ecommerce_screen/core/widgets/products_cards_list.dart';
import 'package:ecommerce_screen/core/widgets/screen_scaffold.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'WishList',
      searchText: 'Product',
      children: [
        ProductCardsList(),
      ],
    );
  }
}
