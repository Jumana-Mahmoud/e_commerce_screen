import 'package:ecommerce_screen/features/home/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_screen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileScreenBody(),
      bottomNavigationBar: BottomNavigations(),
    );

  }
}
