import 'package:flutter/material.dart';

class NavigatorHelper {
  static void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
