import 'package:flutter/material.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({super.key});

  final List<Color> _colors = const [
    Colors.red,
    Colors.black,
    Colors.blueAccent
  ];
  final double circleRadius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _colors.map((color) {
        return Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    backgroundColor: color,
                    radius: circleRadius,
                  ),
                ),
                Visibility(
                  visible: false,
                  child: Positioned(
                    top: circleRadius * 0.25,
                    left: circleRadius * 0.35,
                    child: Icon(
                      Icons.done,
                      size: circleRadius * 1.3,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }).toList(), // Add toList() to convert the Iterable to a List
    );
  }
}
