import 'package:clean_arq_flutter/domain/model/product/gateway/product_gateway.dart';
import 'package:clean_arq_flutter/domain/model/product/product.dart';

class ProductUseCase{

  final ProductGateway _productGateway;

  ProductUseCase(this._productGateway);

  Future<List<Product>> getAll(int categoryId) async{
    return this._productGateway.getAll(categoryId);
  }

  Future<bool> add(Product product) async{
    return this._productGateway.add(product);
  }

}