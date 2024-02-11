import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_button.dart';
class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(text: 'Google search'),
            SizedBox(
              width: 10,
            ),
            SearchButton(text: 'I\'m lucky')
          ],
        )
      ],
    );
  }
}