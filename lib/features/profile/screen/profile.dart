import 'package:flutter/material.dart';

import '../widgets/profile_screen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProfileScreenBody(),
    );

  }
}
