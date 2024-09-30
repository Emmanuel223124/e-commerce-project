import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/screens/profile_page.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        title: const Center(child: Text('My Account')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            CustomText(
                                title: "Micah Damian",
                                size: 18,
                                color: AppColors.primaryBlack,
                                fontWeight: FontWeight.w700),
                            CustomText(
                                title: "Vendor",
                                size: 12,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFf8f8f8),
                    ),
                    child: const Icon(Icons.notifications),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const CustomText(
                  title: "Referral Code",
                  size: 16,
                  color: AppColors.primaryOrange,
                  fontWeight: FontWeight.w400),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(14),
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFffd580),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_add,
                            color: AppColors.primaryOrange, size: 24),
                        SizedBox(width: 10),
                        CustomText(
                            title: "Refer and earn",
                            size: 16,
                            color: AppColors.primaryOrange,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Icon(Icons.send_outlined,
                        size: 24, color: AppColors.primaryOrange),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                height: 188,
                decoration: BoxDecoration(
                  color: const Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ));
                          },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person_add,
                                  color: AppColors.primaryGrey, size: 24),
                              SizedBox(width: 10),
                              CustomText(
                                  title: "My Profile",
                                  size: 16,
                                  color: AppColors.primaryGrey,
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,
                              size: 24, color: AppColors.primaryGrey),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.shopping_basket_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "My Purchases",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.people_outline_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "Downlines",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                height: 252,
                decoration: BoxDecoration(
                  color: const Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wallet_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "My Wallet",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "My Investments",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wallet_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "Withdrawal Account",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.shopping_bag_rounded,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "My Products",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                height: 188,
                decoration: BoxDecoration(
                  color: const Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.question_mark_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "FAQs",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.chat_bubble_outline,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "Contact Us",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.notifications_outlined,
                                color: AppColors.primaryGrey, size: 24),
                            SizedBox(width: 10),
                            CustomText(
                                title: "Notification",
                                size: 16,
                                color: AppColors.primaryGrey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            size: 24, color: AppColors.primaryGrey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.logout_outlined,
                            color: AppColors.primaryGrey, size: 24),
                        SizedBox(width: 10),
                        CustomText(
                            title: "Log Out",
                            size: 16,
                            color: AppColors.primaryGrey,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,
                        size: 24, color: AppColors.primaryGrey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
