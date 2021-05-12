import 'dart:convert';
import 'package:clean_arq_flutter/domain/model/product/product.dart';
import 'package:flutter/material.dart';

List<Product> productsFromJson(String str) => List<Product>.from(json.decode(str).map((p) => ProductMapper.fromJson(p)));
String productsToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((p) => ProductMapper.toJson(p))));

class ProductMapper{
  static fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    size: json["size"],
    description: json["description"],
    category: json["category"],
    color: Color(int.parse("0x" + json["color"])),
    image: json["image"],
  );

  static Map<String, dynamic> toJson(Product p) => {
    "id": p.id,
    "title": p.title,
    "price": p.price,
    "size": p.size,
    "description": p.description,
    "category": p.category,
    "image": p.image,
    "color": p.color,
  };
}