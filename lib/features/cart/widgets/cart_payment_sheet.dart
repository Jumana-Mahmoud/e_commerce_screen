import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

import '../../check_out/screen/check_out_screen.dart';

class CartPayment extends StatelessWidget {
  const CartPayment({super.key});

  final String subTotal = '\$150.0';

  final String total = '\$170.0';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: 300,
        height: 60,
        child: Row(
          children: [
            SizedBox(
              height: 60,
              child: Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: Row(children: [
                      const Text('Sub Total'),
                      const Spacer(),
                      Text(subTotal),
                    ]),
                  ),
                  const Divider(
                    height: 10,
                    color: Palette.mainTextColor,
                  ),
                  SizedBox(
                    width: 150,
                    child: Row(children: [
                      const Text('Total'),
                      const Spacer(),
                      Text(total),
                    ]),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckOutScreen()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Palette.secondaryColor),
                ),
                child: const Text(
                  'Check Out',
                  style: TextStyle(
                    color: Palette.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
