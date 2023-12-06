import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:ecommerce_screen/features/categories/screen/categories_screen.dart';
import 'package:ecommerce_screen/features/home/screens/home_screen.dart';
import 'package:ecommerce_screen/features/search/screen/search_screen.dart';
import 'package:ecommerce_screen/features/whishlist/screen/wish_list.dart';
import 'package:flutter/material.dart';

import '../../profile/screen/profile.dart';

class BottomNavigations extends StatefulWidget {
  const BottomNavigations({super.key});

  @override
  State<BottomNavigations> createState() => _BottomNavigationsState();
}

class _BottomNavigationsState extends State<BottomNavigations> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder:
            (context)=> const HomeScreen()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder:
            (context)=> const CategoriesScreen()));
        break;
      case 2: Navigator.push(context, MaterialPageRoute(builder:
          (context)=> const SearchScreen()));
        break;
      case 3:Navigator.push(context, MaterialPageRoute(builder:
          (context)=> const WishListScreen()));
        break;
      case 4:Navigator.push(context, MaterialPageRoute(builder:
          (context)=> const Profile()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Palette.smallText,
      selectedItemColor: Palette.secondaryColor,
      onTap: _onItemTapped,
    );
  }
}
