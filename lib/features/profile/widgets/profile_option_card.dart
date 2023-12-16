import 'package:flutter/material.dart';

class ProfileOptionCard extends StatelessWidget {
  const ProfileOptionCard(
      {super.key, required this.option, required this.icon, this.onPressed});

  final String option;
  final Icon icon;
  final Icon leadingIcon = const Icon(Icons.arrow_forward_ios);
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: icon,
        title: Text(
          option,
          style: const TextStyle(fontSize: 18),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: leadingIcon,
        ),
      ),
    );
  }
}
