// To parse this JSON data, do
//
//     final suggestion = suggestionFromJson(jsonString);

//Model for only passing activity from BoredAPI
// import 'dart:convert';

// Suggestion suggestionFromJson(String str) =>
//     Suggestion.fromJson(json.decode(str));

// class Suggestion {
//   Suggestion({
//     this.activity,
//   });

//   String? activity;

//   factory Suggestion.fromJson(Map<String, dynamic> json) => Suggestion(
//         activity: json["activity"],
//       );
// }

class Suggestion {
  String? activity;
  String? type;
  int? participants;
  double? price;
  String? link;
  String? key;
  double? accessibility;

  Suggestion(
      {this.activity,
      this.type,
      this.participants,
      this.price,
      this.link,
      this.key,
      this.accessibility});

  Suggestion.fromJson(Map<String, dynamic> json) {
    activity = json["activity"];
    type = json["type"];
    participants = json["participants"];
    price = json["price"];
    link = json["link"];
    key = json["key"];
    accessibility = json["accessibility"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["activity"] = activity;
    _data["type"] = type;
    _data["participants"] = participants;
    _data["price"] = price;
    _data["link"] = link;
    _data["key"] = key;
    _data["accessibility"] = accessibility;
    return _data;
  }
}
