import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  final String buttonText = 'Add to Cart';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 200,
        height: 50,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
