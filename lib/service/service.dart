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

import '../model/singprod_model';
import '../model/userids_model';
import '../screens/start_up/bottom_nav.dart';

class ApiService {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void clear() {
    firstNameController.clear();
    lastNameController.clear();
    usernameController.clear();
    passwordController.clear();
    phoneController.clear();
  }

  static const String baseUrl= "https://fakestoreapi.com/products";

  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      //  print("json response is $jsonData");
      return jsonData.map((data) => ProductModel.fromJson(data)).toList();
    } else {
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
      return jsonData.map((data) => UserModel.fromJson(data)).toList();
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
      return jsonData.map((data) => Userid.fromJson(data)).toList();
    } else {
      throw Exception("failed to load");
    }
  }

  Future<void> signup() async {
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      "firstname": firstNameController.text.trim(),
      "lastname": lastNameController.text.trim(),
      "password": passwordController.text.trim(),
      "phone": phoneController.text.trim(),
    });
    try {
      final response = await http.post(
        Uri.parse("https://fakestoreapi.com/users"),
        headers: headers,
        body: body,
      );
      print("Request body: $body");
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
            fontSize: 16.0);
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
    } finally {}
  }

 Future<void> login(BuildContext context, {String? username, String? password}) async {
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    "username": username,
    "password": password,
  });

  try {
    final response = await http.post(
      Uri.parse("https://fakestoreapi.com/auth/login"),
      headers: headers,
      body: body,
    );
    print("Request body: $body");
    print("Status code is ${response.statusCode}");

    if (response.statusCode == 200) {
      print("User logged in successfully");
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse['token']);
      
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const BottomNavbar(),
      ));

      Fluttertoast.showToast(
        msg: "User logged in successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else if(response.statusCode != 200) {
      final jsonResponse = jsonDecode(response.body);
      final message = jsonResponse['message'] ?? 'Failed to login';
      Fluttertoast.showToast(
        msg: "Failed to login",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  } catch (e) {
   // print('Error: $e');
  }
}



  Future<Userids> fetchuserids() async {
    const url = "https://fakestoreapi.com/users/1";
    final response = await http.get(Uri.parse(url));
    

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
       print("Jason ${jsonData}");
      return  Userids.fromJson(jsonData);
    } else {
      throw Exception("failed to load");
    }
  }

  Future<Singprod> fetchSingprod() async {
    const url = "https://fakestoreapi.com/products/1";
    final response = await http.get(Uri.parse(url));
    

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
       print("Jason ${jsonData}");
      return  Singprod.fromJson(jsonData);
    } else {
      throw Exception("failed to load");
    }
  }

}
