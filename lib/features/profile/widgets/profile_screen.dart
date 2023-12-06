import 'package:ecommerce_screen/features/profile/widgets/profile_options.dart';
import 'package:ecommerce_screen/features/profile/widgets/user_icon.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 60, 16, 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const UserIcon(),
            ProfileOptions(),
          ]),
    );
  }
}
