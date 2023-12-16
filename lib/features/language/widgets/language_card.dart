import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, required this.imgPath, required this.lang});

  final String imgPath;
  final String lang;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        child: ListTile(
          leading: Image.asset(
            imgPath,
            width: 40,
            height: 40,
          ),
          title: Text(
            lang,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Widget language(String imgPath, String lang) {
    return ListTile(
      leading: Image.asset(
        imgPath,
        fit: BoxFit.fill,
      ),
      title: Text(
        lang,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
