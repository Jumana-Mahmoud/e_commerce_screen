import 'package:flutter/cupertino.dart';

import '../../core/widgets/items_list.dart';
import '../../core/widgets/label_widget.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LabelText(
          text: 'Best Selling Products',
        ),
        ItemsList(),
      ],
    );
  }
}
