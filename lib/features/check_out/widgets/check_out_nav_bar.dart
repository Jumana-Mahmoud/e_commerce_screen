import 'package:flutter/cupertino.dart';

import '../../../core/widgets/label_widget.dart';

class CheckOutBottomOperations extends StatelessWidget {
  const CheckOutBottomOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(12.0),
        child: SizedBox(
          width: 300,
          height: 60,
          child: Row(
            children: [
              SizedBox(
                width:200,
                height: 40,
                child: LabelText(
                  text: 'Coupon',
                  lightText: 'Add coupon code',
                ),
              ),
            ],
          ),
        ));
  }
}
