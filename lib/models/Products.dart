import 'package:flutter/cupertino.dart';

import 'category.dart';

class Product{
  String name;
  List<String> images;
  String company;
  int price;
  double rating;
  bool wishList;
  Category category;
  String description;
  List<String> quantities;
  bool featured;

  Product({@ required this.name, this.images, this.company,this.price, this.rating, this.wishList, this.category, this.description, this.quantities, this.featured});


  
}