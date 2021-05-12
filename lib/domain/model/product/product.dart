import 'package:flutter/material.dart';

class Product {
  Product({
    this.id,
    this.title,
    this.price,
    this.size,
    this.description,
    this.category,
    this.image,
    this.color,
  });

  int? id;
  String? title;
  int? price;
  String? size;
  String? description;
  int? category;
  String? image;
  Color? color;
}
