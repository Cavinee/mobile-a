import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  String _name = "Rich";
  int _age = 18;
  String _emailAddress = "rich@binus.ac.id";

  String get name => _name;
  int get age => _age;
  String get emailAddress => _emailAddress;

  void changeDetails(String name, int age, String emailAddress) {
    _name = name;
    _age = age;
    _emailAddress = emailAddress;
    notifyListeners();
  }
}