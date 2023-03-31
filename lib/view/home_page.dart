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
  Suggestion? visibleSuggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        child: visibleSuggestion != null
            ? Center(
                child: Container(
                  height: 100,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${visibleSuggestion!.activity}",
                            style: const TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : const Center(child: Text("No Random suggestion loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'next',
        child: const Icon(Icons.skip_next),
        onPressed: () async {
          //TODO 5: call our service from our controller
          //TODO 6 : await for our service to return a value

          //locator.get<ApiService>().getSuggestion();
          //locator.get<ApiService>().getSuggestion().then((value) {
          //   setState(() {
          //     visibleSuggestion = value;
          //   });
          // });
          //  locator.get<SuggestionController>().getNextSuggestion().then((value) {
          //     setState(() {
          //       visibleSuggestion = value;
          //     });
          //   });
          Suggestion suggestion =
              await locator.get<SuggestionController>().getNextSuggestion();

          print(":::::suggestion:::::$suggestion:::::::");

          //TODO 7 Use Setsate to update our UI
          setState(() {
            print(":::setState:::Pressed:::::::");
            visibleSuggestion = suggestion;
          });
        },
      ), //
    );
  }
}
