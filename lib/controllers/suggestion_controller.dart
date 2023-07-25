//controller for our app to get next boring task

import 'package:get_it_demo/models/suggestion.dart';
import 'package:get_it_demo/services/getSuggestion_service.dart';
import '../locator.dart';

class SuggestionController {
// ApiService apiService = ApiService(); //Needed if your calling Directly
  Future<Suggestion> getNextSuggestion() async {
    //to get next suggestion we need to call our API service
    //rather than calling it directly; we will use our locator using getIt
    //return await locator<ApiService>().getSuggestionfromAPI();

    //Calling DIRECTLY -- NOT NEEDED
    //return await apiService.getSuggestionfromAPI();

    //locator uses the <type> to access the methods from the service

    final suggestionFromAPI =
        await locator.get<ApiService>().getSuggestionfromAPI();
    return suggestionFromAPI;
  }
}
