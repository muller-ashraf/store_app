import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await Api().get("https://fakestoreapi.com/products");

    List<ProductModel> products = [];
    for (var i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
