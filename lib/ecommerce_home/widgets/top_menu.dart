import 'package:flutter/material.dart';

import '../../core/style/colors.dart';
import '../../core/widgets/menu_icons_card.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: _SearchBar()),
        IconCard(
          icon: Icons.shopping_cart_outlined,
          badgeCount: 5,
        ),
        IconCard(icon: Icons.notifications_outlined),
      ],
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Product',
              prefixIcon: Icon(
                Icons.search,
                color: Palette.secondaryColor,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
