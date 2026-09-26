import 'package:dio/dio.dart';
import 'package:proyecto2/models/product_model.dart';

class ProductService {
  final Dio _dio = Dio();

  Future<List<ProductModel>> getProducts() async {
    final response = await _dio.get('https://fakestoreapi.com/products');

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((elemento) => ProductModel.fromJson(elemento)).toList();
    }

    return [];
  }
}