import 'package:e_commerce/constant/color.dart';
import 'package:e_commerce/screens/account_page.dart';
import 'package:e_commerce/screens/home_page.dart';
import 'package:e_commerce/screens/store.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../on_sale.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;

  static const List<Widget> screens = [
    HomePage(),
    OnSale(),
    // CustomText(
    //   title: "Store",
    //   size: 20,
    //   color: AppColors.primaryOrange,
    //   fontWeight: FontWeight.bold,
    // ),
    CustomText(
      title: "Profile",
      size: 20,
      color: AppColors.primaryOrange,
      fontWeight: FontWeight.bold,
    ),
    StorePage(),
    // CustomText(
    //   title: "My Store",
    //   size: 20,
    //   color: AppColors.primaryOrange,
    //   fontWeight: FontWeight.bold,
    // ),
    AccountPage(),
    // CustomText(
    //   title: "Account",
    //   size: 20,
    //   color: AppColors.primaryOrange,
    //   fontWeight: FontWeight.bold,
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryOrange,
        unselectedItemColor: AppColors.primaryOrange,
        // selectedLabelStyle: GoogleFonts.lato(
        //     textStyle: Theme.of(context).textTheme.displayLarge,
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //     color: AppColors.primaryOrange),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppColors.primaryGrey),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: AppColors.primaryOrange,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopify_outlined, color: AppColors.primaryGrey),
              label: 'Shop',
              activeIcon: Icon(
                Icons.shopify_outlined,
                color: AppColors.primaryOrange,
              )),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.data_usage_outlined, color: AppColors.primaryGrey),
              label: 'Portfolio',
              activeIcon: Icon(
                Icons.data_usage_outlined,
                color: AppColors.primaryOrange,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard_outlined,
                  color: AppColors.primaryGrey),
              label: 'My Store',
              activeIcon: Icon(
                Icons.wallet_giftcard_outlined,
                color: AppColors.primaryOrange,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,
                  color: AppColors.primaryGrey),
              label: 'Account',
              activeIcon: Icon(
                Icons.person_outline_rounded,
                color: AppColors.primaryOrange,
              )),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        iconSize: 24,
        elevation: 5,
      ),
    );
  }
}
