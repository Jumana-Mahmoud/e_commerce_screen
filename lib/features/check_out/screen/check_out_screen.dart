import 'package:flutter/material.dart';

import '../../../core/widgets/screens_header.dart';
import '../widgets/check_out_nav_bar.dart';
import '../widgets/check_out_screen_body.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ScreenHeader(
        title: 'Check Out',
      ),
      body: CheckOutBody(),
      bottomNavigationBar: CheckOutBottomOperations(),
    );
  }
}
