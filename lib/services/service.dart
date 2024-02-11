import 'dart:convert';

import 'package:google_clone/config/api_keys.dart';
import 'package:google_clone/config/api_response.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummy = true;

  Future<Map<String, dynamic>> fetch(
      {required String queryTerm, String start = "0"}) async {
    try {
      if (!isDummy) {
        String q = queryTerm.contains(" ")
            ? queryTerm.split(" ").join('%20')
            : queryTerm;

        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = jsonDecode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      e.toString();
    }
    return apiResponse;
  }
}
