import 'package:ecommerce_screen/core/style/colors.dart';
import 'package:flutter/material.dart';

class ActivityCardBuilder extends StatelessWidget {
  ActivityCardBuilder({super.key});

  final List<Map<String, dynamic>> activities = [
    {
      'icon': Icons.done,
      'title': 'Order Arrived',
      'subtitle': 'order '
          '45632147896has been completed and delivered to address\n'
          'Yesterday 10:45 AM'
    },
    {
      'icon': Icons.note_alt,
      'title': 'Order Success',
      'subtitle': 'order 4156987 has been '
          'success. wait till the product is sent\n'
          'July 20, 2020 8:00 AM'
    },
    {
      'icon': Icons.credit_card,
      'title': 'Payment Confirmed',
      'subtitle': 'payment for order '
          '845694545 has been confirmes. wait till the product to be sent.'
          '\n'
          'July 21, 2020 8:00 AM'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 500,
      child: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 110,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 12, 0),
                child: ListTile(
                  leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Palette.secondaryColor.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        activities[index]['icon'],
                        color: Palette.secondaryColor,
                      )),
                  title: Text(activities[index]['title']),
                  subtitle: Text(activities[index]['subtitle']),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
