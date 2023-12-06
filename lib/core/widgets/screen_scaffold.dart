import 'package:ecommerce_screen/core/widgets/screen_title.dart';
import 'package:ecommerce_screen/core/widgets/search_bar.dart';
import 'package:ecommerce_screen/features/home/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ScreenScaffold extends StatelessWidget {
  const ScreenScaffold(
      {super.key,
      required this.title,
      required this.searchText,
      required this.children});

  final String title;
  final String searchText;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 60, 0, 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ScreenTitle(title: title),
              const SizedBox(height: 20),
              CustomSearchBar(hintText: 'Search $searchText', width: 350),
              ...children,
            ]),
      ),
      bottomNavigationBar: const BottomNavigations(),
    );
  }
}
