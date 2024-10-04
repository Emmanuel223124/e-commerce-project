import 'package:e_commerce/screens/auth/signup_page.dart';
import 'package:e_commerce/widget/custom_button.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../start_up/bottom_nav.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Log In to Continue',
            style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlack),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: CustomText(
                  title: 'Log In to Continue Buying And Selling',
                  size: 14,
                  color: AppColors.primaryGrey,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_2_rounded),
                  
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryOrange)),
                ),
                onTap: () {
                  const Icon(Icons.person_2_rounded,
                      color: AppColors.primaryOrange);
                }),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
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
                      borderSide:
                          const BorderSide(color: AppColors.primaryOrange))),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgotten Password?",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryBlack,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Recover",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryOrange,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              buttonTitle: 'Log In',
              buttonColor: AppColors.primaryOrange,
              textColor: AppColors.primaryWhite,
              textWeight: FontWeight.w600,
              textSize: 16,
              buttonHeight: 51,
              alignment: Alignment.center,
              onTap: () {

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BottomNavbar(),
                ));
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryBlack,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryOrange,
                      ),
                    ),
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
