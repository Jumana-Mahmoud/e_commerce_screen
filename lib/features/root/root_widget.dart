import 'package:ecommerce_screen/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  const UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}
