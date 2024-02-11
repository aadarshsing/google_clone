import 'package:flutter/material.dart';
import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        FooterText(title: 'About'),
        SizedBox(
          width: 10,
        ),
        FooterText(title: 'Advertising'),
        SizedBox(
          width: 10,
        ),
        FooterText(title: 'Business'),
        SizedBox(
          width: 10,
        ),
        FooterText(title: 'How search Work?'),
        SizedBox(
          width: 10,
        ),
        FooterText(title: 'privacy'),
        SizedBox(
          width: 10,
        ),
        FooterText(title: 'terms'),
        SizedBox(
          width: 10,
        ),
        FooterText(title: 'setting'),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
