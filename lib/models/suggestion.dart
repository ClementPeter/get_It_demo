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

// class Suggestion {
//   String? activity;

//   Suggestion(this.activity);

//   Suggestion.fromJson(Map<String, dynamic> json) {
//     activity = json['activity'];
//   }
// }

// class Credentials {
//   String? accessToken;
//   String? refreshToken;

//   Credentials({
//     this.accessToken,
//     this.refreshToken,
//   });

//   Credentials.fromJson(Map<String, dynamic> json) {
//     accessToken = json['access_token'];
//     refreshToken = json['refresh_token'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['access_token'] = accessToken;
//     data['refresh_token'] = refreshToken;
//     return data;
//   }
// }
