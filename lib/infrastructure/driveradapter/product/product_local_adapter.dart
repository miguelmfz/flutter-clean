import 'package:clean_arq_flutter/domain/model/product/gateway/product_gateway.dart';
import 'package:clean_arq_flutter/domain/model/product/product.dart';
import 'package:flutter/material.dart';

class ProductLocalAdapter extends ProductGateway{
  @override
  Future<bool> add(Product product) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getAll(int categoryId) async {
    return products;
  }

  List<Product> products = [
    Product(
        id: 1,
        title: "Reebok Energen Lite",
        price: 135200,
        size: "40-44",
        description: dummyText,
        category: 0,
        image: "assets/images/img01.png",
        color: Color(0xFFD2CCBA)),
    Product(
        id: 2,
        title: "Adidas Tenis Response",
        price: 339000,
        size: "37-42",
        description: dummyText,
        category: 0,
        image: "assets/images/img02.png",
        color: Color(0xFF83ADE5)),
    Product(
        id: 3,
        title: "Puma Training",
        price: 280000,
        size: "37-42",
        description: dummyText,
        category: 0,
        image: "assets/images/img03.png",
        color: Color(0xFFBBC8D9)),
    Product(
        id: 4,
        title: "Asics Running",
        price: 345000,
        size: "40-42",
        description: dummyText,
        category: 0,
        image: "assets/images/img04.png",
        color: Color(0xFFF08056)),
    Product(
        id: 5,
        title: "Asics Sport",
        price: 298000,
        size: "38-42",
        description: dummyText,
        category: 0,
        image: "assets/images/img05.png",
        color: Color(0xFFF9C640)),
    Product(
      id: 6,
      title: "Skechers Adv",
      price: 230000,
      size: "36-44",
      description: dummyText,
      category: 0,
      image: "assets/images/img06.png",
      color: Color(0xFF783B51),
    ),
    Product(
      id: 7,
      title: "Nike Air",
      price: 450000,
      size: "36-44",
      description: dummyText,
      category: 0,
      image: "assets/images/img07.png",
      color: Color(0xFFCBA843),
    ),
    Product(
      id: 8,
      title: "Real Madrid",
      price: 180000,
      size: "M-L-XL",
      description: dummyText,
      category: 1,
      image: "assets/images/img_cam_01.png",
      color: Colors.blueGrey.shade200,
    ),
    Product(
      id: 9,
      title: "La Juve",
      price: 220000,
      size: "M-L-XL",
      description: dummyText,
      category: 1,
      image: "assets/images/img_cam_02.png",
      color: Colors.black12,
    ),
    Product(
      id: 10,
      title: "PSG",
      price: 280000,
      size: "M-L-XL",
      description: dummyText,
      category: 1,
      image: "assets/images/img_cam_03.png",
      color: Colors.indigo.shade300,
    ),
  ];

  static String dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}