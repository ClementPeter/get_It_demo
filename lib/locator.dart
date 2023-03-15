//File for Specifying Get it Service Locator

//Get It helps us to register and retrieve services from the service locator.

import 'package:get_it/get_it.dart';
import 'package:get_it_demo/domain/suggestion_controller.dart';
import 'package:get_it_demo/services/api_service.dart';

//TODO 2: cREATE A GET IT LOCATOR
//TODO 3: Create a Setup and create our services to be passed to GET IT

final locator = GetIt.instance;

void setupLocator() {
  //Register our services
  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerLazySingleton<SuggestionController>(() => SuggestionController());
}

//With the help of GetIt all our function/logic can be separated from our UI
//and called from one file
//This means that we can now use the locator to get our services
//from anywhere in our app

//NEXT : Initialise our GetIt in our main.dart file
