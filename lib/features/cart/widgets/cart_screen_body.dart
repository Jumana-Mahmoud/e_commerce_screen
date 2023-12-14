import 'package:ecommerce_screen/core/widgets/products_cards_list.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  final int productsNum = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('$productsNum'),
        ProductCardsList(
          trailing: const _CartCardTrailing(),
        ),
      ],
    );
  }
}

class _CartCardTrailing extends StatelessWidget {
  const _CartCardTrailing({super.key});

  final int? quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              )),
          Text(
            '$quantity',
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.minimize,
              ))
        ],
      ),
    );
  }
}
