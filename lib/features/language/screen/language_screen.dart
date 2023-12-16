import 'package:flutter/material.dart';

import '../../../core/style/colors.dart';
import '../../../core/widgets/screens_header.dart';
import '../widgets/language_screen_body.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar:  ScreenHeader(
        title: 'Language',
        icon: Icons.add,
      ),
      body: LanguageScreenBody(),
    );
  }
}
