import 'dart:convert';

import 'package:clean_arq_flutter/domain/model/category/gateway/category.dart';

List<Category> categoryFromJson(String str) => List<Category>.from(
    json.decode(str).map((x) => CategoryMapper.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => CategoryMapper.toJson(x))));

class CategoryMapper {
  static fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        size: json["size"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        color: json["color"],
      );

  static Map<String, dynamic> toJson(Category c) => {
        "id": c.id,
        "title": c.title,
        "price": c.price,
        "size": c.size,
        "description": c.description,
        "category": c.category,
        "image": c.image,
        "color": c.color,
      };
}
