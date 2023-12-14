import 'package:ecommerce_screen/core/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

import '../../../core/style/colors.dart';

class PayementScreenBody extends StatelessWidget {
  const PayementScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon(),
            const SizedBox(height: 25.0),
            paymentStatus(),
            const SizedBox(height: 25.0),
            paymentInfo(),
            const SizedBox(height: 25.0),
            const SubmitButton(buttonText: 'Continue Shopping')
          ],
        ),
      ),
    );
  }

  Widget paymentStatus() {
    return const Text(
      'Payment Successful!',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget paymentInfo() {
    return const Text(
      'Your order will be processed and sent to\n '
      'you as soon as possible',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14),
    );
  }

  Widget icon() {
    return Container(
        height: 65,
        width: 65,
        decoration: const BoxDecoration(
          color: Palette.secondaryColor,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.done,
          color: Palette.primaryColor,
        ));
  }
}
