import 'package:ecommerce_screen/features/home/widgets/best_selling.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/featured_items.dart';
import '../widgets/special_items.dart';
import '../widgets/top_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  Padding(
        padding: EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopMenu(),
              SpecialItems(),
              FeaturedItems(),
              BestSelling(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigations(),
    );
  }
}
