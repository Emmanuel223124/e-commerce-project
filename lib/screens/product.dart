// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2024 Toyota Camry", textAlign: TextAlign.center),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/png/car_image.png"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.navigate_before_outlined,
                  size: 35,
                ),
                Text("1 of 4"),
                Icon(
                  Icons.navigate_next_outlined,
                  size: 35,
                ),
              ],
            ),
            const CustomText(
              title: "Investments on Sale",
              size: 18,
              color: AppColors.primaryBlack,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: 185,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child:
                                Image.asset("images/png/car1.png", width: 185)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  title: "Loise Vuitton Car",
                                  size: 16,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),
                              CustomText(
                                title: "N250,000",
                                size: 18,
                                color: AppColors.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                title: "Category : Automobile",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    title: "See Details",
                                    size: 10,
                                    color: AppColors.primaryGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    weight: 20,
                                    size: 15,
                                    color: AppColors.primaryGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    width: 185,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child:
                                Image.asset("images/png/car2.png", width: 185)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  title: "Loise Vuitton Car",
                                  size: 16,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),
                              CustomText(
                                title: "N250,000",
                                size: 18,
                                color: AppColors.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                title: "Category : Automobile",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    title: "See Details",
                                    size: 10,
                                    color: AppColors.primaryGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    weight: 20,
                                    size: 15,
                                    color: AppColors.primaryGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: 185,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child:
                                Image.asset("images/png/car3.png", width: 185)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  title: "Loise Vuitton Car",
                                  size: 16,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),
                              CustomText(
                                title: "N250,000",
                                size: 18,
                                color: AppColors.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                title: "Category : Automobile",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    title: "See Details",
                                    size: 10,
                                    color: AppColors.primaryGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    weight: 20,
                                    size: 15,
                                    color: AppColors.primaryGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    width: 185,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child:
                                Image.asset("images/png/car4.png", width: 185)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  title: "Loise Vuitton Car",
                                  size: 16,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),
                              CustomText(
                                title: "N250,000",
                                size: 18,
                                color: AppColors.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                title: "Category : Automobile",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    title: "See Details",
                                    size: 10,
                                    color: AppColors.primaryGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    weight: 20,
                                    size: 15,
                                    color: AppColors.primaryGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: 185,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child:
                                Image.asset("images/png/car5.png", width: 185)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  title: "Loise Vuitton Car",
                                  size: 16,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),
                              CustomText(
                                title: "N250,000",
                                size: 18,
                                color: AppColors.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                title: "Category : Automobile",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    title: "See Details",
                                    size: 10,
                                    color: AppColors.primaryGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    weight: 20,
                                    size: 15,
                                    color: AppColors.primaryGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    width: 185,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child:
                                Image.asset("images/png/car6.png", width: 185)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  title: "Loise Vuitton Car",
                                  size: 16,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),
                              CustomText(
                                title: "N250,000",
                                size: 18,
                                color: AppColors.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                title: "Category : Automobile",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    title: "See Details",
                                    size: 10,
                                    color: AppColors.primaryGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    weight: 20,
                                    size: 15,
                                    color: AppColors.primaryGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
