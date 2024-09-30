// ignore_for_file: non_constant_identifier_names
import 'package:e_commerce/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/widget/custom_text.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _OnStorePage();
}

class _OnStorePage extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            title: "On Sale",
            size: 24,
            color: AppColors.primaryBlack,
            fontWeight: FontWeight.w700),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  child: Image.asset("images/png/car1.png",
                                      width: 185)),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(
                                        title: "Loise Vuitton Car",
                                        size: 16,
                                        color: AppColors.primaryBlack,
                                        fontWeight: FontWeight.w500),
                                    const CustomText(
                                      title: "N250,000",
                                      size: 18,
                                      color: AppColors.primaryOrange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      title: "Category : Automobile",
                                      size: 12,
                                      color: AppColors.primaryGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                  child: Image.asset("images/png/car2.png",
                                      width: 185)),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(
                                        title: "Loise Vuitton Car",
                                        size: 16,
                                        color: AppColors.primaryBlack,
                                        fontWeight: FontWeight.w500),
                                    const CustomText(
                                      title: "N250,000",
                                      size: 18,
                                      color: AppColors.primaryOrange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      title: "Category : Automobile",
                                      size: 12,
                                      color: AppColors.primaryGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                  child: Image.asset("images/png/car3.png",
                                      width: 185)),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(
                                        title: "Loise Vuitton Car",
                                        size: 16,
                                        color: AppColors.primaryBlack,
                                        fontWeight: FontWeight.w500),
                                    const CustomText(
                                      title: "N250,000",
                                      size: 18,
                                      color: AppColors.primaryOrange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      title: "Category : Automobile",
                                      size: 12,
                                      color: AppColors.primaryGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                  child: Image.asset("images/png/car4.png",
                                      width: 185)),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(
                                        title: "Loise Vuitton Car",
                                        size: 16,
                                        color: AppColors.primaryBlack,
                                        fontWeight: FontWeight.w500),
                                    const CustomText(
                                      title: "N250,000",
                                      size: 18,
                                      color: AppColors.primaryOrange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      title: "Category : Automobile",
                                      size: 12,
                                      color: AppColors.primaryGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                  child: Image.asset("images/png/car5.png",
                                      width: 185)),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(
                                        title: "Loise Vuitton Car",
                                        size: 16,
                                        color: AppColors.primaryBlack,
                                        fontWeight: FontWeight.w500),
                                    const CustomText(
                                      title: "N250,000",
                                      size: 18,
                                      color: AppColors.primaryOrange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      title: "Category : Automobile",
                                      size: 12,
                                      color: AppColors.primaryGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                  child: Image.asset("images/png/car6.png",
                                      width: 185)),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(
                                        title: "Loise Vuitton Car",
                                        size: 16,
                                        color: AppColors.primaryBlack,
                                        fontWeight: FontWeight.w500),
                                    const CustomText(
                                      title: "N250,000",
                                      size: 18,
                                      color: AppColors.primaryOrange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      title: "Category : Automobile",
                                      size: 12,
                                      color: AppColors.primaryGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage(),
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
          ],
        ),
      ),
    );
  }
}
