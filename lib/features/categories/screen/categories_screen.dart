import 'package:ecommerce_screen/core/widgets/screen_scaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/categories_grid.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'Categories',
      searchText: 'Category',
      children: [
        CategoriesGrid(),
      ],
    );
  }
}
