//
import 'package:flutter/material.dart';

//Trying out some features with ChangeNotifier
//
class BaseModel extends ChangeNotifier {
  void setBusy(bool value) {
    if (value == true) {
      CircularProgressIndicator(
        color: Colors.blue,
      );
    } else {
      null;
    }
  }
}
