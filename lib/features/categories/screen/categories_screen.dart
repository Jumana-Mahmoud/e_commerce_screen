import 'package:ecommerce_screen/features/home/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_screen/core/widgets/search_bar.dart';

import '../widgets/categories_grid.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomSearchBar(
                hintText: 'Search Category ',
                width: 350,
              ),
              CategoriesGrid(),
            ]),
      ),
      bottomNavigationBar: const BottomNavigations(),
    );
  }
}
