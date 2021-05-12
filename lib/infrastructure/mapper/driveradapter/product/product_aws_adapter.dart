import 'package:clean_arq_flutter/domain/model/product/gateway/product_gateway.dart';
import 'package:clean_arq_flutter/domain/model/product/product.dart';
import 'package:flutter/material.dart';

class ProductAWSAdapter extends ProductGateway{
  @override
  Future<bool> add(Product product) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getAll(int categoryId) async {
    // get resource from aws platform
    Future<List<Product>>? products;
    return products!;
  }
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}