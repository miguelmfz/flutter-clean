import 'package:clean_arq_flutter/domain/model/category/gateway/category.dart';
import 'package:clean_arq_flutter/domain/model/category/gateway/category_gateway.dart';

class CategoryUseCase {
  final CategoryGateway _categoryGateway;

  CategoryUseCase(this._categoryGateway);

  Future<List<Category>> getAll() async {
    return this._categoryGateway.getAllCategorys();
  }
}
