import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Types/User.dart';
import '../Model/Product.dart';

class ApiClient {
  getUser() async {
    var url = Uri.parse('https://dummyjson.com/products');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // final data = json.decode(response.body);
      return productDataFromJson(response.body);
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
  }
}
