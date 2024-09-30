import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import '../service/service.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  List<dynamic> products = [];

  Future<void> fetchProducts() async {
    const url = "https://fakestoreapi.com/products";
    final response = await http.get(Uri.parse(url));
    print(response.body); 
    print(response.statusCode);
    
    if (response.statusCode == 200) {
      setState(() {
        products = jsonDecode(response.body);
      });
     // print("products: $products");
    } else {
     // print("failed to load");
    }
  }

  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  products[index]['title'],
                ),
                subtitle: Text(
                  products[index]['description'],
                ),
                leading: Image.network( products[index]['image'],),
                trailing: Text(
                  products[index]['price'].toString(),
                ) ,
              );
            }));
  }
}
