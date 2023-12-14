
import 'package:ecommerce_screen/features/notification/widgets/notifications_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/screens_header.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ScreenHeader(title: 'Notification',),
      body: NotificationsScreenBody(),
    );
  }
}
