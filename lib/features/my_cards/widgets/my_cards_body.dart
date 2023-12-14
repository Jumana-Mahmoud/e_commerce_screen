import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class MyCardsBody extends StatelessWidget {
  const MyCardsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Text('Your Payment Cards',
          style: TextStyle(
            fontSize: 14,
            color: Palette.smallText
          ),),
          CreditCardWidget(
            cardNumber: '4245016540548103425',
            expiryDate: '01/21',
            cardHolderName: 'Card Holder',
            cvvCode: '123',
            showBackView: false,
            cardBgColor: Palette.mainTextColor,
            onCreditCardWidgetChange: (CreditCardBrand) {},
          ),
          CreditCardWidget(
            cardNumber: '5245016540548103425',
            expiryDate: '05/25',
            cardHolderName: 'Card Holder',
            cvvCode: '123',
            showBackView: false,
            cardBgColor: Palette.greyCard,
            onCreditCardWidgetChange: (creditCardBrand) {},
          ),
        ]));
  }
}
