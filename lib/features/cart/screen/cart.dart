import 'package:ecommerce_screen/features/cart/widgets/cart_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/screens_header.dart';
import '../widgets/cart_payment_sheet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ScreenHeader(
        title: 'Cart',
      ),
      body: CartScreenBody(),
      bottomNavigationBar: CartPayment(),
    );
  }
}
