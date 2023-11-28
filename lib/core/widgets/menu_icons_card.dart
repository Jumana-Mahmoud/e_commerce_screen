import 'package:flutter/material.dart';
import '../style/colors.dart';

class IconCard extends StatelessWidget {
  const IconCard({super.key, required this.icon, this.badgeCount = 0});

  final IconData icon;
  final int badgeCount;

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
            child: Icon(
              icon,
              color: Palette.secondaryColor,
            ),
          ),
          if (badgeCount > 0)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.secondaryColor, // Adjust the color as needed
                ),
                child: Text(
                  badgeCount.toString(),
                  style: TextStyle(
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
