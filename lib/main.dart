import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/resposive/mobile_screen_layout.dart';
import 'package:google_clone/resposive/responsive_layout_screen.dart';
import 'package:google_clone/resposive/web_screen_layout.dart';
import 'package:google_clone/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      debugShowCheckedModeBanner: false,
      title: 'Google clone',
      home:const ResponsiveLayoutScreen(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout())
      
    );
  }
}


