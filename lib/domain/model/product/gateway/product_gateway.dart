import 'package:clean_arq_flutter/domain/model/product/product.dart';

abstract class ProductGateway {
  Future<Product> getById(int id);
  Future<List<Product>> getAll(int categoryId);
  Future<bool> add(Product product);
  Future<bool> delete(Product product);
  Future<bool> update(Product productNew, Product productOld);
}