import 'package:flutter/cupertino.dart';

class Category{
  String _name;
  String _image;

  Category(this._name, this._image);

  // ignore: unnecessary_getters_setters
  String get image => _image;

  // ignore: unnecessary_getters_setters
  set image(String value) {
    _image = value;
  }

  // ignore: unnecessary_getters_setters
  String get name => _name;

  // ignore: unnecessary_getters_setters
  set name(String value) {
    _name = value;
  }
}