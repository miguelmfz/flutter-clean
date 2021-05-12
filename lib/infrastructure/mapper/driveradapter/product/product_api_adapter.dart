import 'package:clean_arq_flutter/domain/model/product/gateway/product_gateway.dart';
import 'package:clean_arq_flutter/domain/model/product/product.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/product_mapper.dart';
import 'package:http/http.dart' as http;

class ProductApiAdapter extends ProductGateway{
  @override
  Future<bool> add(Product product) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getAll(int categoryId) async{
    var url = Uri.parse('https://pknnfsix23.execute-api.us-east-1.amazonaws.com/dev/products?categoryId=$categoryId');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      return productsFromJson(response.body);
    } else {
      throw Exception("Unexpected error ocurred in the server.");
    }
  }
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}