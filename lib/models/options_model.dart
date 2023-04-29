import 'package:flutter/material.dart';

class OptionsModel {
  Icon optionicon;

  String optionname;

  Widget? trailingwidget;

  OptionsModel(
      {required this.optionicon,
      required this.optionname,
      this.trailingwidget});
}
