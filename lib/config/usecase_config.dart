import 'package:clean_arq_flutter/domain/model/category/gateway/category_gateway.dart';
import 'package:clean_arq_flutter/domain/usecase/category/category_usecase.dart';
import 'package:clean_arq_flutter/domain/usecase/product/product_usecase.dart';
import 'package:clean_arq_flutter/infrastructure/driveradapter/category/category_api_adapter.dart';
import 'package:clean_arq_flutter/infrastructure/driveradapter/product/product_api_adapter.dart';
import 'package:clean_arq_flutter/domain/model/product/gateway/product_gateway.dart';

class UseCaseConfig {
  ProductUseCase? _productUseCase;
  CategoryUseCase? _categoryUseCase;

  ProductGateway? _productAdapter;
  CategoryGateway? _categoryAdapter;

  UseCaseConfig() {
    initApi();
  }

  initLocal() {}

  initApi() {
    _productAdapter = ProductApiAdapter();
    _productUseCase = ProductUseCase(_productAdapter!);

    _categoryAdapter = CategoryApiAdapter();
    _categoryUseCase = CategoryUseCase(_categoryAdapter!);
  }

  ProductUseCase getProductUseCase() {
    return _productUseCase!;
  }

  CategoryUseCase getCategorytUseCase() {
    return _categoryUseCase!;
  }
}
