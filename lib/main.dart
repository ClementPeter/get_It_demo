import 'package:flutter/material.dart';
import 'package:get_it_demo/locator.dart';
import 'package:get_it_demo/view/home_page.dart';

//Demo to use Get It for Service Locator
void main() {
  //TODO 4: call our setupLocator function and register our GetIt Services
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Get It Demo'),
    );
  }
}
