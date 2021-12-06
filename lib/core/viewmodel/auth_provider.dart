import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  //* ----------------------------
  //* Property data field
  //* ----------------------------

  // Controller
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();

  //* ----------------------------
  //* Function field
  //* ----------------------------
  void doLogin() {
    // Do somethings
  }

}
