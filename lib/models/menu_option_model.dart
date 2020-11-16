import 'package:flutter/material.dart';

// Model class to hold menu option data (language and theme)
class MenuOptionsModel {
  String key;
  String value;
  Widget widget;
  IconData icon;

  MenuOptionsModel({this.key, this.value, this.widget, this.icon});
}
