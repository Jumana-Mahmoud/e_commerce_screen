import 'package:ecommerce_screen/core/utils/navigation_helper.dart';
import 'package:ecommerce_screen/features/profile/widgets/profile_option_card.dart';
import 'package:flutter/material.dart';

import '../../cart/screen/cart.dart';
import '../../language/screen/language_screen.dart';
import '../../shipping_address/screen/shipping_address_screen.dart';

class ProfileOptions extends StatelessWidget {
  ProfileOptions({super.key});

  final List<String> options = [
    'My Account',
    'My Orders',
    'Language Settings',
    'Shipping Address',
    'My Cards',
    'Settings',
    'Privacy Policy',
    'FAQ'
  ];
  final List<Icon> optionsIcons = const [
    Icon(Icons.person_2_rounded),
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.language_outlined),
    Icon(Icons.place_outlined),
    Icon(Icons.credit_card),
    Icon(Icons.settings_outlined),
    Icon(Icons.note_alt_rounded),
    Icon(Icons.info_outline),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 530,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: optionsIcons.length,
        itemBuilder: (BuildContext context, int index) {
          return ProfileOptionCard(
              option: options[index],
              icon: optionsIcons[index],
              onPressed: () => _navigateToScreen(context, index));
        },
      ),
    );
  }

  void _navigateToScreen(BuildContext context, int index) {
    switch (index) {
      case 1:
        NavigatorHelper.navigateTo(context, const CartScreen());
        break;
        case 2:
        NavigatorHelper.navigateTo(context, const Language());
        break;
        case 3:
        NavigatorHelper.navigateTo(context, const ShippingAddressScreen());
        break;
      default:
        break;
    }
  }
}
