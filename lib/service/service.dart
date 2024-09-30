
import 'dart:convert';
import 'dart:math';

import 'package:e_commerce/model/product_model.dart';
import 'package:http/http.dart' as http;
class ApiService {
  static const String baseUrl =   "https://fakestoreapi.com/products";
 
  
  Future<List<ProductModel>> fetchProducts() async{
   
    final response = await http.get(Uri.parse(baseUrl));
     if(response.statusCode==200){
    List<dynamic> jsonData = json.decode(response.body);
    print("json response is $jsonData");
    return jsonData.map((data)=> ProductModel.fromJson(data)
    ).toList();
    
  
     }else{
      throw Exception("failed to load");
     }
  }
}