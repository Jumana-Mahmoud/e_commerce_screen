import 'package:ecommerce_screen/features/profile/widgets/profile_option_card.dart';
import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  ProfileOptions({super.key});

  final List<String> options = [
    'My Account',
    'My Orders',
    'Language Settings',
    'Shipping Address',
    'My Cards',
    'Privacy Policy',
  ];
  final List<Icon> optionsIcons = const [
    Icon(Icons.person_2_rounded),
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.credit_card),
    Icon(Icons.place_outlined),
    Icon(Icons.settings_outlined),
    Icon(Icons.note_alt_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: optionsIcons.length,
        itemBuilder: (BuildContext context, int index) {
          return ProfileOptionCard(
              option: options[index], icon: optionsIcons[index]);
        },
      ),
    );
  }
}
