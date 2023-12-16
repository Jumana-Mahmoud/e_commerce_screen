import 'package:flutter/material.dart';

import '../../../core/style/colors.dart';
import '../../../core/utils/navigation_helper.dart';
import '../../payment/screen/payment_screen.dart';

class CheckOutBottomOperations extends StatelessWidget {
  const CheckOutBottomOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 77,
          child: Column(
            children: [
              Row(
                children: [
                  couponText(
                    'Coupon',
                    'Add coupon code',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style:
                            TextStyle(fontSize: 10, color: Palette.smallText),
                      ),
                      Text(
                        '\$170.0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 200),
                  ElevatedButton(
                    onPressed: () => NavigatorHelper.navigateTo(
                        context, const PaymentScreen()),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Palette.secondaryColor),
                    ),
                    child: const Text(
                      'Pay Now',
                      style: TextStyle(
                        color: Palette.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget couponText(String text, String lightText) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Palette.mainTextColor),
        ),
        const SizedBox(width: 180),
        Text(
          lightText,
          style: const TextStyle(fontSize: 10, color: Palette.smallText),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Palette.smallText,
          size: 12,
        )
      ],
    );
  }
}
