import 'package:flutter/material.dart';

import '../../../core/widgets/screens_header.dart';
import '../widgets/payment_screen_body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreenHeader(title: 'Payment'),
      body: PayementScreenBody(),
    );
  }

}
