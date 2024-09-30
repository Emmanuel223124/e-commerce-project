
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
class Service {
  List<dynamic> products=[];
  
  Future<void>fetchProducts() async{
    const url = "https://fakestoreapi.com/products";
    final response = await http.get(Uri.parse(url));
     if(response.statusCode==200){
    List<dynamic> products = jsonDecode(response.body);
    print("products: $products");
  
     }else{
      print("failed to load");
     }
  }
}