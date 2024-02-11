import 'package:flutter/material.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style:const TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
