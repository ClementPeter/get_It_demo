//File for Specifying Get it Service Locator

//Get It helps us to register and retrieve services/fuctions(that belong to classes)
// from the service locator.

import 'package:get_it/get_it.dart';
import 'package:get_it_demo/controllers/suggestion_controller.dart';
import 'package:get_it_demo/services/api_suggestion_service.dart';

//TODO 2: CREATE A GET IT LOCATOR
//TODO 3: Create a Setup and create our services to be passed to GET IT

final locator = GetIt.instance;

void setupLocator() {
  //Register our services
  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerLazySingleton<SuggestionController>(
    () => SuggestionController(),
  );
}

// With Get it we dont have to create instances of classes to pass
// their functions/method to other classes

// BENEFITS: 
//instead we just call getIt and pass the class name and ACCESS the method

// With the help of GetIt, All our function/logic can be separated from our UI
// and called from one file
// This means that we can now use the locator to get our services
// from anywhere in our app

//NEXT : Initialise our GetIt in our main.dart file


//Alternative syntax for GetIt
//Initialize GetIt
//final GetIt getIt = GetIt.instance;

//register our service

//getIt.registerLazySingleton<ApiService>(()) => ApiService(),

 //retrieve our service
 //getIt.get<ApiService>().getSuggestion();

