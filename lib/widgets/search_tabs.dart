import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            text: 'All',
            isActive: true,
            icon: Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'Images',
            isActive: false,
            icon: Icons.image,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'Videos',
            isActive: false,
            icon: Icons.pause,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'News',
            isActive: false,
            icon: Icons.article,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'Maps',
            isActive: false,
            icon: Icons.map,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'More',
            isActive: false,
            icon: Icons.more_horiz,
          ),
        ],
      ),
    );
  }
}
