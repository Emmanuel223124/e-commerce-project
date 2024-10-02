import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/model/product_model.dart';
import 'package:e_commerce/model/user_model.dart';
import 'package:e_commerce/screens/on_sale.dart';
import 'package:e_commerce/service/service.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<ProductModel>> _products;
  @override
  void initState() {
    _products = ApiService().fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryWhite,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "Hello Micah,",
                    style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryGrey),
                  ),
                  Text(
                    "Welcome",
                    style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryBlack),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(12),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffF8F8F8),
              ),
              child: const Icon(
                Icons.search_rounded,
                size: 24,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(12),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffF8F8F8),
              ),
              child: const Icon(Icons.notifications_none_outlined),
            ),
          ],
        ),
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 10),
                        width: 382,
                        decoration: BoxDecoration(
                            color: const Color(0xFF454343),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Investments",
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryWhite),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 17.42,
                                  color: Color(0xffFF8C00),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Total Invest",
                              style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryGrey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "N7,000,000",
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryWhite),
                                ),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.visibility_off_outlined,
                                  size: 22,
                                  color: Color(0xffFF8C00),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: AppColors.primaryOrange,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.data_usage_rounded),
                                      SizedBox(width: 10),
                                      CustomText(
                                        title: "48.12% RIO",
                                        size: 13,
                                        color: AppColors.primaryWhite,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month_rounded,
                                          color: AppColors.primaryBlack),
                                      SizedBox(width: 10),
                                      CustomText(
                                          title: "1/7/2024",
                                          size: 14,
                                          color: AppColors.primaryWhite,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 10),
                        width: 382,
                        decoration: BoxDecoration(
                            color: const Color(0xFF454343),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Investments",
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryWhite),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 17.42,
                                  color: Color(0xffFF8C00),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Total Invest",
                              style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryGrey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "N7,000,000",
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryWhite),
                                ),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.visibility_off_outlined,
                                  size: 22,
                                  color: Color(0xffFF8C00),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: AppColors.primaryOrange,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.data_usage_rounded),
                                      SizedBox(width: 10),
                                      CustomText(
                                        title: "48.12% RIO",
                                        size: 13,
                                        color: AppColors.primaryWhite,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month_rounded,
                                          color: AppColors.primaryBlack),
                                      SizedBox(width: 10),
                                      CustomText(
                                          title: "1/7/2024",
                                          size: 14,
                                          color: AppColors.primaryWhite,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 10),
                        width: 382,
                        decoration: BoxDecoration(
                            color: const Color(0xFF454343),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Investments",
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryWhite),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 17.42,
                                  color: Color(0xffFF8C00),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Total Invest",
                              style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryGrey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "N7,000,000",
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryWhite),
                                ),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.visibility_off_outlined,
                                  size: 22,
                                  color: Color(0xffFF8C00),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: AppColors.primaryOrange,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.data_usage_rounded),
                                      SizedBox(width: 10),
                                      CustomText(
                                        title: "48.12% RIO",
                                        size: 13,
                                        color: AppColors.primaryWhite,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month_rounded,
                                          color: AppColors.primaryBlack),
                                      SizedBox(width: 10),
                                      CustomText(
                                          title: "1/7/2024",
                                          size: 14,
                                          color: AppColors.primaryWhite,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, top: 40, right: 20, bottom: 10),
                  height: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                          title: "On Sale",
                          size: 18,
                          color: AppColors.primaryBlack,
                          fontWeight: FontWeight.w500),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const OnSale(),
                          ));
                        },
                        child: const CustomText(
                            title: "See all",
                            size: 16,
                            color: AppColors.primaryBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FutureBuilder<List<ProductModel>>(
                          future: _products,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(
                                  child: Text("Error: ${snapshot.error}"));
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                  child: Text("No Products Found"));
                            }
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  final product = snapshot.data![index];
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    margin: const EdgeInsets.only(right: 20.0),
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF8F8F8),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Center(child: Image.network(height: 50,width: 50,fit: BoxFit.cover,)),
                                        const SizedBox(height: 10),
                                         CustomText(
                                            title: product.title!,
                                            size: 14,
                                            color:AppColors.primaryBlack ,
                                            
                                            fontWeight: FontWeight.w500),
                                            CustomText(title:toString(), size: 14, color: Color(0xFF8D8C8C), fontWeight: FontWeight.w500),
                                        const SizedBox(height: 5),
                                        const CustomText(
                                            title: "Exp. date: 6/9/2024",
                                            size: 10,
                                            color: Color(0xFF8D8C8C),
                                            fontWeight: FontWeight.w400),
                                      ],
                                    ),
                                  );
                                });
                          })),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, top: 40, right: 20, bottom: 10),
                  height: 18,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          title: "My Store",
                          size: 18,
                          color: AppColors.primaryBlack,
                          fontWeight: FontWeight.w500),
                      CustomText(
                          title: "Visit store",
                          size: 16,
                          color: AppColors.primaryBlack,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/png/shoes.png"),
                              const SizedBox(height: 10),
                              const CustomText(
                                  title: "Ikoyo Real Estate",
                                  size: 14,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w500),
                              const SizedBox(height: 5),
                              const CustomText(
                                  title: "Exp. date: 6/9/2024",
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/png/bugatti.png"),
                              const SizedBox(height: 10),
                              const CustomText(
                                  title: "Ikoyo Real Estate",
                                  size: 14,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w500),
                              const SizedBox(height: 5),
                              const CustomText(
                                  title: "Exp. date: 6/9/2024",
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/png/product1.png"),
                              const SizedBox(height: 10),
                              const CustomText(
                                  title: "Ikoyo Real Estate",
                                  size: 14,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w500),
                              const SizedBox(height: 5),
                              const CustomText(
                                  title: "Exp. date: 6/9/2024",
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/png/shoes.png"),
                              const SizedBox(height: 10),
                              const CustomText(
                                  title: "Ikoyo Real Estate",
                                  size: 14,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w500),
                              const SizedBox(height: 5),
                              const CustomText(
                                  title: "Exp. date: 6/9/2024",
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/png/bugatti.png"),
                              const SizedBox(height: 10),
                              const CustomText(
                                  title: "Ikoyo Real Estate",
                                  size: 14,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w500),
                              const SizedBox(height: 5),
                              const CustomText(
                                  title: "Exp. date: 6/9/2024",
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/png/product1.png"),
                              const SizedBox(height: 10),
                              const CustomText(
                                  title: "Ikoyo Real Estate",
                                  size: 14,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w500),
                              const SizedBox(height: 5),
                              const CustomText(
                                  title: "Exp. date: 6/9/2024",
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        );
  }
}
