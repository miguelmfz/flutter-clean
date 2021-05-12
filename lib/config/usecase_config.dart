
import 'package:clean_arq_flutter/domain/usecase/product/product_usecase.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/driveradapter/product/product_api_adapter.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/driveradapter/product/product_aws_adapter.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/driveradapter/product/product_local_adapter.dart';

class UseCaseConfig{

  ProductUseCase? _productUseCase;
  //ProductApiAdapter? _productAdapter;
  ProductLocalAdapter? _productAdapter;
  //ProductAWSAdapter? _productAdapter;

  UseCaseConfig(){
    _productAdapter = ProductLocalAdapter();
    _productUseCase = ProductUseCase(_productAdapter!);
  }

  ProductUseCase getProductUseCase(){
    return _productUseCase!;
  }
}