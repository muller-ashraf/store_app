import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class GetAllCatagory {
  Future<List<dynamic>> getAllCatagory({required String catagoryName}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$catagoryName'),
    );
    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> products = [];
    for (var i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
