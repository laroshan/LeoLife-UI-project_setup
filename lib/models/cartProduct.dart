
import 'Products.dart';

class CartProduct extends Product{
  int count;
  String quantity;

  CartProduct({this.count, this.quantity,String name,String company, int price, List<String> images}):super(name:name,company:company,price:price,images:images);

}