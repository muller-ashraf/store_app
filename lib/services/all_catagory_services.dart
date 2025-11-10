import 'package:store_app/helper/api.dart';

class AllCatagoryServices {
  Future<List<dynamic>> getAllCatagory() async {
    List<dynamic> data = await Api().get(
      'https://fakestoreapi.com/products/categories',
    );

    return data;
  }
}
