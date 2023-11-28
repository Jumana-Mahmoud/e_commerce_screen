import 'package:flutter/material.dart';
import '../../core/widgets/items_list.dart';
import '../../core/widgets/label_widget.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LabelText(
          text: 'Featured Products',
        ),
        ItemsList(),
      ],
    );
  }
}

