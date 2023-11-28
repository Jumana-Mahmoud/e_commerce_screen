import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/cupertino.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize:16,
                fontWeight: FontWeight.bold,
                color: Palette.mainTextColor),
          ),
          const Spacer(),
          const Text(
            'See More',
            style: TextStyle(fontSize: 10, color: Palette.smallText),
          ),
        ],
      ),
    );
  }
}
