//controller for our app to get next boring task

import 'package:get_it_demo/services/getSuggestion_service.dart';

import '../locator.dart';

class SuggestionController {
  getNextSuggestion() async {
    //to get next suggestion we need to call our api service
    //rather than calling it directly we will use our locator using getIt
    // return await locator<ApiService>().getSuggestion();

    //locator uses the <type> to access the methods from the service

      return await locator.get<ApiService>().getSuggestion();
  }
}
