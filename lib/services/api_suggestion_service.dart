import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get_it_demo/models/suggestion.dart';

// This class is responsible for fetching random bored activities from the API

class ApiService {
  Future<Suggestion> getSuggestionfromAPI() async {
    try {
      var url = Uri.parse('http://www.boredapi.com/api/activity/');
      //var response = await http.get(url);
      var response = await http.get(url);
      //print(":::::response::::$response:::::::::::::::");
      //print(":::response body::::${response.body}::::::::");
      //print("::::json Data:::${jsonDecode(response.body)}::::::");

      //THIS OR - ONE-LINER
      //Map<String, dynamic> bodyData = jsonDecode(response.body);
      //return Suggestion.fromJson(bodyData);

      //ONE-LINER
      return Suggestion.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw Exception('Error getting Suggestion');
    }
  }
}
