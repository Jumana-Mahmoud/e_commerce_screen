import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.hintText, required this.width});

  final String hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: const Icon(
                Icons.search,
                color: Palette.secondaryColor,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
