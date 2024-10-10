import 'package:e_commerce/model/Userid_%20model.dart';
import 'package:e_commerce/model/user_model.dart';
import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../service/service.dart';
import '../widget/custom_text.dart';

class TestPage2 extends StatefulWidget {
  const TestPage2({super.key});

  @override
  State<TestPage2> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage2> {
  late Future<List<Userid>> useridList;

  ApiService serviceClass = ApiService();

  @override
  void initState() {
    useridList = ApiService().fetchUserid();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FutureBuilder<List<Userid>>(
                future: useridList,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text("No Products Found"));
                  }
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final user = snapshot.data![index];
                        return Container(
                          width: 100,
                          margin: const EdgeInsets.only(bottom: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.primaryOrange,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Center(child: Image.network(height: 50,width: 50,fit: BoxFit.cover,)),
                              const SizedBox(height: 10),
                              CustomText(
                                  title: user.name!,
                                  size: 14,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),

                              CustomText(
                                  title: user.username!,
                                  size: 10,
                                  color: AppColors.primaryBlack,
                                  fontWeight: FontWeight.w500),

                              const SizedBox(height: 5),

                               CustomText(
                                  title: user.email!.toString(),
                                  size: 10,
                                  color: const Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                                  CustomText(
                                  title: user.address!.toString(),
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                                  CustomText(
                                  title: user.phone!.toString(),
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                                  CustomText(
                                  title: user.website!.toString(),
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                                   CustomText(
                                  title: user.company!.toString(),
                                  size: 10,
                                  color: Color(0xFF8D8C8C),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        );
                      });
                })),
      ),
    );
  }
}
