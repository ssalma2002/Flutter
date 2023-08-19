import 'package:flutter/material.dart';
class Product {
  String? name;
  double? price;
  double? rating;
  String? imageUrl;

  Product(this.name, this.price, this.rating, this.imageUrl);
}
  Product bag1 = Product("awesome bag 1", 1000, 4.5, "images/bagImage.jpg");
  Product bag2 = Product( "awesome bag 2",  2000,  4.5,  "images/bagImage2.jpg");
  Product bag3 = Product( "awesome bag 3",  3000,  4.5,  "images/bagImage3.jpg");
  Product bag4 = Product("awesome bag 4",  2600,  4.5, "images/bagImage4.jpg");
  Product bag5 = Product( "awesome bag 5",  2500,  4.5,  "images/bagImage5.jpg");
  Product bag6 = Product( "awesome bag 6",  2343,  4.5,  "images/bagImage6.jpg");

List<Product> products =[bag1,bag2,bag3, bag4, bag5, bag6];