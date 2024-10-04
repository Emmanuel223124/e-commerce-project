
import 'dart:convert';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:e_commerce/model/Userid_%20model.dart';
import 'package:e_commerce/model/product_model.dart';
import 'package:e_commerce/model/signup_model.dart';
import 'package:e_commerce/model/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ApiService {
  TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final formkey = GlobalKey<FormState>();
void clear(){
firstNameController.clear();
lastNameController.clear();
passwordController.clear();
phoneController.clear();
}

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

   Future<List<UserModel>> fetchUsers() async {
    const url = "https://jsonplaceholder.typicode.com/posts";
    final response = await http.get(Uri.parse(url));
    // print(response.body); 
    // print("status code is ${response.statusCode}");
    
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data)=> UserModel.fromJson(data))
      .toList();
     
    
    } else {
    throw Exception("failed to load");
    }
  }
   Future<List<Userid>> fetchUserid() async {
    const url = "https://jsonplaceholder.typicode.com/users";
    final response = await http.get(Uri.parse(url));
    // print(response.body); 
    // print("status code is ${response.statusCode}");
    
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data)=> Userid.fromJson(data))
      .toList();
     
    
    } else {
    throw Exception("failed to load");
    }
  }

  Future<void> signup() async {
    final headers = {'Content-Type': 'application/json'};
    
    try {
      final response = await http.post(
        Uri.parse("https://fakestoreapi.com/users"),
        headers: headers,
        body: jsonEncode({
            "firstname": firstNameController.text.trim(),
            "lastname": lastNameController.text.trim(),
            "password": passwordController.text.trim(),
            "phone": phoneController.text.trim(),
          }));
      
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        if (kDebugMode) {
          print(jsonResponse);
        }
        Fluttertoast.showToast(
        msg: "User registered succesfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
        print('User registered successfully');
       // _toastService.success('User registered successfully');
       // Get.offAll(() => const SuccessPage());
       
      } else {
        final jsonResponse = jsonDecode(response.body);
        final message = jsonResponse['message'] ?? 'Failed to register';
       // _toastService.error('Failed to register: $message');
      }
    } catch (e) {
     // _toastService.error('Network error: $e');
    } finally {
     
    }
  }
}