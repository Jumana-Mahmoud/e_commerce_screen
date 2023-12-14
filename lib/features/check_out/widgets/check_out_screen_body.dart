import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:ecommerce_screen/features/check_out/widgets/payment_method_options.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/label_widget.dart';
import 'cart_items_view.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LabelText(
              text: 'Your Address',
              lightText: 'Change '
                  'Address',
            ),
            addressCard(),
            const LabelText(
              text: 'Shipping Mode',
              lightText: 'Change '
                  'Mode',
            ),
            shippingModeCard(),
            const LabelText(
              text: 'Your Cart',
              lightText: 'View All',
            ),
            CartItemsView(),
            boldLabel("Payment Method"),
            PaymentMethodOptions(),
            boldLabel("Order Summary"),
          ],
        ),
      ),
    );
  }

  Widget boldLabel(String text) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Palette.mainTextColor),
        ));
  }
  Widget cartItemsView(){

    return Spacer();
  }

  Widget addressCard() {
    return const SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'John Doe, +961-123456789\n'
            'schools street, behind ,sjidcn\n'
            'Malesia, fisrt ,1600',
            style: TextStyle(color: Palette.smallText),
          ),
        ),
      ),
    );
  }

  Widget shippingModeCard() {
    return const SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text(
                'Fiat Rate',
                style: TextStyle(color: Palette.smallText),
              ),
              Spacer(),
              Text('\$20.0'),
            ],
          ),
        ),
      ),
    );
  }
}
