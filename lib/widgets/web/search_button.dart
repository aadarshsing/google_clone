import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchButton extends StatelessWidget {
  final String text;
  const SearchButton({
    required this.text,
    super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8)
        )
      ),
      color: searchColor,
      padding:const EdgeInsetsDirectional.symmetric(
        horizontal: 20,
        vertical: 15
      ),
      elevation: 0,
      onPressed:(){},
      child:Text(text));
  }
}
