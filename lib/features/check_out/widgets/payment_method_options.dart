import 'package:flutter/material.dart';

class PaymentMethodOptions extends StatelessWidget {
   PaymentMethodOptions({super.key});

   final List<String> items = [
     'assets/images/payPal.png',
     'assets/images/masterCard.png',
     'assets/images/applePay.png',
     'assets/images/googlePay.png',
   ];


   @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return buildItemCard(items[index]);
        },
      ),
    );
  }

  Widget buildItemCard(item) {
    return Card(
      elevation: 3,
      child: Image.asset(
        item,
        width: 90,
        height: 20,
        fit: BoxFit.contain,
      ),
    );
  }
}
