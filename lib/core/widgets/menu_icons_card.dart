import 'package:flutter/material.dart';
import '../style/colors.dart';

class IconCard extends StatelessWidget {
  const IconCard(
      {super.key,
      required this.icon,
      this.badgeCount = 0,
      required this.screen});

  final IconData icon;
  final int badgeCount;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: IconButton(
              icon: Icon(icon),
              color: Palette.secondaryColor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => screen));
              },
            ),
          ),
          if (badgeCount > 0)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.secondaryColor, // Adjust the color as needed
                ),
                child: Text(
                  badgeCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
