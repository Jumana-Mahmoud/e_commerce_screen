import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:ecommerce_screen/core/widgets/screens_header.dart';
import 'package:flutter/material.dart';

import '../widgets/shipping_address_body.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar:  ScreenHeader(
        title: 'Shipping Address',
        icon: Icons.add,
      ),
      body: ShippingAddressScreenBody(),
    );
  }
}

