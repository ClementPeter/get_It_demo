import 'package:flutter/material.dart';
import 'package:get_it_demo/locator.dart';
import 'package:get_it_demo/models/suggestion.dart';
import 'package:get_it_demo/controllers/suggestion_controller.dart';
//import 'package:get_it_demo/locator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isLoading = false; //triggers loading state values

  Suggestion? visibleSuggestion; //Holds data for suggestion from API

  void startLoading(bool value) {
    // print(":::setState:::app_loading $value:::::::");
    Future.delayed(const Duration(seconds: 2), () {});
    setState(() {
      isLoading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        visibleSuggestion?.activity ?? "No Activity",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

      floatingActionButton: FloatingActionButton(
        tooltip: 'next',
        child: const Icon(Icons.skip_next),
        onPressed: () async {
          //add code for loading indicator
          startLoading(true); //Set app to laoding state to true

          //TODO 5: call our service from our controller
          //TODO 6 : await for our service to return a value

          //LONGER ROUTE
          // await locator.get<ApiService>().getSuggestionfromAPI().then((value) {
          //   setState(() {
          //     visibleSuggestion = value;
          //   });
          // });
          // startLoading(false); //Set app to laoding state to false

          //OR
          //calling Suggestion from getNextSuggestion Controller directly with Get-It; which Indirectly calls Suggestion from API
          // await locator
          //     .get<SuggestionController>()
          //     .getNextSuggestion()
          //     .then((value) {
          //   setState(() {
          //     visibleSuggestion = value;
          //   });
          // });
          // startLoading(false);

          //calling Suggestion from API directly with Get-It
          // Suggestion suggestion =
          //     await locator.get<SuggestionController>().getNextSuggestion();
         // Suggestion suggestion =              await locator.get<SuggestionController>().getNextSuggestion();
         Suggestion suggestion = await locator.get<SuggestionController>().getNextSuggestion();
          //TODO 7 Use Setsate to update our UI
          setState(() {
            print(":::setState:::Pressed:::::::");
            visibleSuggestion = suggestion;
          });
          startLoading(false); //Set app to laoding state to false
        },
      ),
      //
    );
  }
}
