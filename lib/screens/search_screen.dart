import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/services/service.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/search_header.dart';
import 'package:google_clone/widgets/search_result_component.dart';
import 'package:google_clone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String start;
  final String queryTerm;
  const SearchScreen({required this.start, required this.queryTerm, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: queryTerm,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //web header
                const SearchHeader(),
                //tabs for news images etc
                Padding(
                  padding: EdgeInsets.only(left: size.width < 768 ? 30 : 150.0),
                  child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal, child: SearchTabs()),
                ),
                //search result
                FutureBuilder(
                  future:
                      ApiService().fetch(queryTerm: queryTerm, start: start),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: size.width < 768 ? 30 : 150.0, top: 12),
                              child: Text(
                                'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results in (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Color(0XFF70757A),
                                ),
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data?['items'].length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: size.width < 768 ? 30 : 150.0,
                                      top: 10),
                                  child: SearchResultComponent(
                                    description: snapshot.data?['items'][index]
                                        ['snippet'],
                                    link: snapshot.data?['items'][index]
                                        ['link'],
                                    text: snapshot.data?['items'][index]
                                        ['title'],
                                    linkToGo: snapshot.data?['items'][index]
                                        ['formattedUrl'],
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      if (start != "0") {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return SearchScreen(
                                                  start: (int.parse(start) - 10)
                                                      .toString(),
                                                  queryTerm: queryTerm);
                                            },
                                          ),
                                        );
                                      }
                                    },
                                    child: const Text(
                                      '<prev',
                                      style: TextStyle(
                                          fontSize: 15, color: blueColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return SearchScreen(
                                                start: (int.parse(start) + 10)
                                                    .toString(),
                                                queryTerm: queryTerm);
                                          },
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'next>',
                                      style: TextStyle(
                                          fontSize: 15, color: blueColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const SearchFooter(),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
