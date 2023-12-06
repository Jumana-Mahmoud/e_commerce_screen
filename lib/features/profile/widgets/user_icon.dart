import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/user.png',
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
