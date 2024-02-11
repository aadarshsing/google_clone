import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
              horizontal: size.width < 768 ? 50 : 150.0, vertical: 15),
          child: Row(
            children: [
              Text(
                "Nepal",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.green,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.circle,
                size: 12,
                color: Color(0xFF70757A),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('44600 Kathmandu Bagmati',
                  style: TextStyle(color: primaryColor))
            ],
          ),
        ),
        // const Divider(
        //   thickness: 0,
        //   height: 9,
        //   color: footerColor,
        // ),
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: size.width < 768 ? 50 : 150.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Help",
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Send Feedback",
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Privacy",
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Terms",
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
