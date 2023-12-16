import 'package:flutter/cupertino.dart';

import '../../../core/style/colors.dart';
import 'language_card.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Center(
          child: Text(
            'Select a Language',
            style: TextStyle(fontSize: 14, color: Palette.smallText),
          ),
        ),
        LanguageCard(imgPath: 'assets/images/us.png', lang: 'English',),
        LanguageCard(imgPath: 'assets/images/french.png', lang:'French',),
        LanguageCard(imgPath:'assets/images/germany.png',lang:'German'),
        LanguageCard(imgPath:'assets/images/china.png',lang:'Chinese'),
        LanguageCard(imgPath:'assets/images/japan.png',lang:'Japanese'),
      ],
    );

  }
}
