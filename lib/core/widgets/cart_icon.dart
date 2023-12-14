import 'package:flutter/material.dart';

import '../style/colors.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.add_shopping_cart,
        color: Palette.secondaryColor,
      ),
    );
  }
}
