import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllCatagory {
  Future<List<dynamic>> getAllCatagory({required String catagoryName}) async {
    
    List<dynamic> data = await Api().get(
      'https://fakestoreapi.com/products/category/$catagoryName',
    );

    List<ProductModel> products = [];
    for (var i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
