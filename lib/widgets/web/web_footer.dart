import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';
class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child:const Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'About'),
                SizedBox(width: 10,),
                FooterText(title: 'Advertising'),
                SizedBox(width: 10,),
                FooterText(title: 'Business'),
                SizedBox(width: 10,),
                FooterText(title: 'How search Work?'),
                SizedBox(width: 10,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'privacy'),
                SizedBox(width: 10,),
                FooterText(title: 'terms'),
                SizedBox(width: 10,),
                FooterText(title: 'setting'),
                SizedBox(width: 10,),
              ],
            )
          ],
        ),),
    );
  }
}