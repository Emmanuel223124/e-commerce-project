import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Profile")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  hintText: "Micah",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusColor: AppColors.primaryOrange,
                    fillColor: AppColors.primaryOrange,
                    prefixIcon: const Icon(Icons.person_2_outlined,
                        color: AppColors.primaryGrey),
                    hintText: "Damian",
                    hintStyle: const TextStyle(color: AppColors.primaryGrey),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.primaryOrange),
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusColor: AppColors.primaryOrange,
                    fillColor: AppColors.primaryOrange,
                    prefixIcon: const Icon(Icons.call_outlined,
                        color: AppColors.primaryGrey),
                    hintText: "07069244764",
                    hintStyle: const TextStyle(color: AppColors.primaryGrey),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.primaryOrange),
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusColor: AppColors.primaryOrange,
                    fillColor: AppColors.primaryOrange,
                    prefixIcon: const Icon(Icons.lock_outline_rounded,
                        color: AppColors.primaryGrey),
                    suffixIcon: const Icon(Icons.visibility,
                        color: AppColors.primaryGrey),
                    hintText: "********",
                    hintStyle: const TextStyle(color: AppColors.primaryGrey),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.primaryOrange),
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 51,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.primaryOrange,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: const CustomText(
                    title: "Edit Profile",
                    size: 16,
                    color: AppColors.primaryWhite,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
