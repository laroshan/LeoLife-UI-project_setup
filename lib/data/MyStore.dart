

import 'dart:core';


import 'package:flutter/cupertino.dart';
import 'package:leo_ife/data/productList.dart' as productData;
import 'package:leo_ife/data/CartList.dart' as cartData;
import 'package:leo_ife/models/Products.dart';
import 'package:leo_ife/models/cartProduct.dart';


class MyStore extends ChangeNotifier{

  List<Product> _productList=productData.productList;
  List<CartProduct> _cartList=cartData.cartList;
  List<Product> _activeProduct;
  double _cartTotal=0.00;

  List<Product> get productList => _productList;

  List<CartProduct> get cartList => _cartList;

  List<Product> get activeProduct => _activeProduct;


  double get cartTotal => _cartTotal;



  set cartTotal(double value) {
    _cartTotal += value;
    notifyListeners();
  }
  void addCartTotal(double value){
    _cartTotal+=value;
    notifyListeners();
  }
  void deductCartTotal(double value){
    _cartTotal-=value;
    notifyListeners();
  }

  int get count{
    return _cartList.length;
  }
  void addCart(Product product){
    CartProduct c=  product;
    _cartList.add(c);
    notifyListeners();
  }
  void removeCart(int index){
    _cartList.removeAt(index);

    notifyListeners();
  }

}