import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

class ShippingCard extends StatelessWidget {
  const ShippingCard(
      {super.key, required this.nameAndNumber, required this.address});

  final String nameAndNumber;
  final String address;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        margin: const EdgeInsets.all(12.0),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListTile(
            leading: const Icon(Icons.location_on_outlined,
              color: Palette.secondaryColor,),
            title: Text(nameAndNumber),
            subtitle: Text(
              address,
              style: TextStyle(color: Palette.lightColor),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ) ,
    );

  }
}
