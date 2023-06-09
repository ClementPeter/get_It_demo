// To parse this JSON data, do
//
//     final suggestion = suggestionFromJson(jsonString);

//Model for only passing activity from BoredAPI
import 'dart:convert';

Suggestion suggestionFromJson(String str) =>
    Suggestion.fromJson(json.decode(str));

class Suggestion {
  Suggestion({
    this.activity,
  });

  String? activity;

  factory Suggestion.fromJson(Map<String, dynamic> json) => Suggestion(
        activity: json["activity"],
      );
}
