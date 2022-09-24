import 'package:flutter/material.dart';
import 'package:restaurentapp/colors.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> prod = [
  Product(
      image:"assets/images/product_1.jpg",
      title: "Office Cods",
      description: "dummyText",
      price: 234,
      size: 5,
      id: 1,
      color: Custom_Colors.yellow),
  Product(
      image:"assets/images/product_2.jpg",
      title: "Office Code",
      description: "dummyText",
      price: 234,
      size: 5,
      id: 2,
      color:Custom_Colors.light_violet ),
  Product(
      image:"assets/images/product_3.jpg", title: "Office Code",
      description: "dummyText",
      price: 234,
      size: 5,
      id: 3,
      color:Custom_Colors.yellow),
  Product(
      image:"assets/images/product_4.jpg", title: "Office Code",
      description: "dummyText",
      price: 234,
      size: 39,
      id: 4,
      color: Custom_Colors.brown_),
  Product(
      image:"assets/images/product_5.jpg",title: "Office Code",
      description: "dummyText",
      price: 234,
      size: 39,
      id: 5,
      color: Custom_Colors.snow_white),
  Product(
      image:"assets/images/product_6.jpg",title: "shoe Fits",
      description: "dummyText",
      price: 234,
      size: 39,
      id: 6,
      color:Custom_Colors.red),
];
