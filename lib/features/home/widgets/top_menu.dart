import 'package:ecommerce_screen/core/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '/core/widgets/menu_icons_card.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomSearchBar(hintText: 'Search Product', width: 220)),
        IconCard(
          icon: Icons.shopping_cart_outlined,
          badgeCount: 5,
        ),
        IconCard(icon: Icons.notifications_outlined),
      ],
    );
  }
}


