import 'package:e_commerce/screens/auth/login_page.dart';
import 'package:e_commerce/service/service.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';
import '../start_up/bottom_nav.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

ApiService apiService = ApiService();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Create Account',
            style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlack),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: apiService.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: CustomText(
                      title: "Sign up now to start selling and buying",
                      size: 14,
                      color: AppColors.primaryGrey,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: apiService.firstNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return " firstName must not be empty";
                    }
                  },
                  decoration: InputDecoration(
                      focusColor: AppColors.primaryOrange,
                      fillColor: AppColors.primaryOrange,
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: AppColors.primaryOrange),
                      hintText: "First Name",
                      hintStyle: const TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.primaryOrange),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.primaryOrange))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: apiService.lastNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "lastName must not be empty";
                    }
                  },
                  decoration: InputDecoration(
                      focusColor: AppColors.primaryOrange,
                      fillColor: AppColors.primaryOrange,
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: AppColors.primaryOrange),
                      hintText: "Last Name",
                      hintStyle: const TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.primaryOrange),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.primaryOrange))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: apiService.phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "phone must not be empty";
                    }
                  },
                  decoration: InputDecoration(
                      focusColor: AppColors.primaryOrange,
                      fillColor: AppColors.primaryOrange,
                      prefixIcon: const Icon(Icons.lock_outline_rounded,
                          color: AppColors.primaryOrange),
                      hintText: "Phone Number",
                      hintStyle: const TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.primaryOrange),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.primaryOrange))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: apiService.passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password must not be empty";
                    } else if (value!.length < 8) {
                      return "Password must not be less than 8 characters";
                    }
                  },
                  decoration: InputDecoration(
                      focusColor: AppColors.primaryOrange,
                      fillColor: AppColors.primaryOrange,
                      prefixIcon: const Icon(Icons.lock_outline_rounded,
                          color: AppColors.primaryOrange),
                      suffixIcon: const Icon(Icons.visibility,
                          color: AppColors.primaryGrey),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.primaryOrange),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.primaryOrange))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      focusColor: AppColors.primaryOrange,
                      fillColor: AppColors.primaryOrange,
                      prefixIcon: const Icon(Icons.person_add_alt,
                          color: AppColors.primaryGrey),
                      hintText: "Referral Code",
                      hintStyle: const TextStyle(color: AppColors.primaryGrey),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.primaryOrange),
                          borderRadius: BorderRadius.circular(8))),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomText(
                    title: "Optional",
                    size: 12,
                    color: AppColors.primaryGrey,
                    fontWeight: FontWeight.w400),
                const SizedBox(
                  height: 48,
                ),
                  CustomButton(
                buttonTitle: 'Create Account',
                buttonColor: AppColors.primaryOrange,
                textColor: AppColors.primaryWhite,
                textWeight: FontWeight.w600,
                textSize: 16,
                buttonHeight: 51,
                alignment: Alignment.center,
                onTap: () {
                  
                 
                  if (apiService.formkey.currentState!.validate()){
                   
                     apiService.signup();
                       Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
                  }
                 
                },
              ),
                // InkWell(
                //   onTap: () {
                //     if (apiService.formkey.currentState!.validate()) {
                //       apiService.signup();
                //        Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) => const LoginPage(),
                //     ));
                //     apiService.clear();  
                //     }
                   
                //   },
                //   child: Container(
                //     height: 51,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: BoxDecoration(
                //       color: AppColors.primaryOrange,
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //     alignment: Alignment.center,
                //     child: const CustomText(
                //         title: "Create Account",
                //         size: 16,
                //         color: AppColors.primaryWhite,
                //         fontWeight: FontWeight.w600),
                //   ),
                // ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                          title: "Already have an account?",
                          size: 14,
                          color: AppColors.primaryBlack,
                          fontWeight: FontWeight.w400),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                        },
                        child: const CustomText(
                            title: "Log In",
                            size: 14,
                            color: AppColors.primaryOrange,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
