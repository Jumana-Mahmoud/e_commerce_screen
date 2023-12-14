import 'package:flutter/material.dart';

import '../../../core/widgets/screens_header.dart';
import '../widgets/my_cards_body.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  ScreenHeader(
        title: 'My Cards',
        icon: Icons.add,
      ),
      body:MyCardsBody() ,
    );
  }
}
