import 'package:flutter/material.dart';
import 'package:get_it_demo/domain/models/suggestion.dart';
import 'package:get_it_demo/domain/suggestion_controller.dart';
import 'package:get_it_demo/locator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Suggestion? visibleSuggestion;

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        child: visibleSuggestion != null
            ? Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Category ${visibleSuggestion.activity}",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Center(child: Text("No Random suggestion loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
    
        tooltip: 'next',
        child: const Icon(Icons.skip_next),
            onPressed: () {
              //TODO 5: call our service from our controller
              //TDo 6 : await for our service to return a value

              //locator.get<ApiService>().getSuggestion();
              // locator.get<ApiService>().getSuggestion().then((value) {
              //   setState(() {
              //     visibleSuggestion = value;
              //   });
              // });
              // locator.get<SuggestionController>().getNextSuggestion().then((value) {
              //   setState(() {
              //     visibleSuggestion = value;
              //   });
              // });
             Suggestion suggestion = locator.get<SuggestionController>().getNextSuggestion();

              //TODO 7 Use Setsate to update our UI
              setState(() {
                visibleSuggestion = suggestion;
              });
            },
      ), // 
    );
  }
}
