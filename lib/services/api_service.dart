import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get_it_demo/domain/models/suggestion.dart';

// This class is responsible for fetching memes from the API

class ApiService {
  Future<Suggestion> getSuggestion() async {
    try {
      var url = Uri.parse('https://some-random-api.ml/meme');
      //var response = await http.get(url);
      http.Response response = await http.get(url);
      print(response);
      return Suggestion.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw Exception('Error getting suggestion');
    }
  }
}
