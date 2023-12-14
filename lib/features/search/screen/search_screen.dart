import 'package:ecommerce_screen/core/widgets/cart_icon.dart';
import 'package:ecommerce_screen/core/widgets/products_cards_list.dart';
import 'package:ecommerce_screen/core/widgets/screen_scaffold.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'Search',
      searchText: 'Here...',
      children: [
        ProductCardsList(trailing: CartIcon(),),
      ],
    );
  }
}
