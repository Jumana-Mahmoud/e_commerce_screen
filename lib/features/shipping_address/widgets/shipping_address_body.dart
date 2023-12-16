import 'package:ecommerce_screen/features/shipping_address/widgets/shipping_card.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/style/colors.dart';

class ShippingAddressScreenBody extends StatelessWidget {
  const ShippingAddressScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Your Shipping Address',
            style: TextStyle(fontSize: 14, color: Palette.smallText),
          ),
        ),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const ShippingCard(
              nameAndNumber: 'Johm Doe, +961-12345678',
              address: 'Schools street, Behind '
                  'the official school, Maghdouche, saida, Lebanon, 1600',
            );
          },
        ),
      ],
    );
  }
}
