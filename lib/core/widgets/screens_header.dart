import 'package:ecommerce_screen/core/widgets/screen_title.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class ScreenHeader extends StatelessWidget implements PreferredSizeWidget {
  const ScreenHeader({super.key, required this.title, this.icon});

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: ScreenTitle(title: title),
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Palette.mainTextColor,
      actions: [
        Icon(icon),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);

}








