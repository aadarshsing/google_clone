import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 28,
              top: 5,
            ),
            child: Image.asset('lib/assets/images/google-logo.png',
                height: 30, width: 92),
          ),
          const SizedBox(
            width: 27,
          ),
          Container(
            width: size.width > 768 ? size.width * 0.45 : size.width * 0.55,
            height: 44,
            decoration: BoxDecoration(
                color: searchColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: searchColor)),
            child: TextFormField(
              onFieldSubmitted: (query) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchScreen(start: "0", queryTerm: query);
                    },
                  ),
                );
              },
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 5),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'lib/assets/images/mic-icon.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
