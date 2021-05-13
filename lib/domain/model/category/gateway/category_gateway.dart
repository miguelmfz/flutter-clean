import 'package:clean_arq_flutter/domain/model/category/gateway/category.dart';

abstract class CategoryGateway {
  Future<List<Category>> getAllCategorys();
}
