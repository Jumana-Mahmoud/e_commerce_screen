import 'package:ecommerce_screen/features/notification/widgets/promotion_items_builder.dart';
import 'package:flutter/material.dart';

import 'activity_builder.dart';

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const _CustomWidget(text: 'Promotions',),
            PromotionsBuilder(),
            const _CustomWidget(text: 'Your Activity',),
            ActivityCardBuilder(),


          ],
        ),
      ),
    );
  }
}

class _CustomWidget extends StatelessWidget {
  const _CustomWidget({super.key, required this.text});
    final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
