import 'package:e_commerce/model/userids_model';
import 'package:e_commerce/screens/auth/signup_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import '../constant/color.dart';
import '../model/singprod_model';
import '../service/service.dart';
import '../widget/custom_text.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  Future<Singprod>? prod;

  @override
  void initState() {
    prod = ApiService().fetchSingprod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("User details are ${prod}");
    return Scaffold(
        body: FutureBuilder<Singprod>(
            future: prod,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text("Error: ${snapshot.error}"));
              } else if (!snapshot.hasData) {
                return const Center(child: Text("No Products Found"));
              }
              Singprod item = snapshot.data!;
              return ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                  title: item.id!.toString(),
                                  size: 20,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                           CustomText(
                                  title: item.title!,
                                  size: 20,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w400),
                                   CustomText(
                                  title: item.price!.toString(),
                                  size: 20,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w400),
                                   CustomText(
                                  title: item.description!,
                                  size: 20,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w400),
                                   CustomText(
                                  title: item.category!,
                                  size: 20,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w400),
                                  Center(child: Image.network(item.image!)),
                                     ],
                        
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}
