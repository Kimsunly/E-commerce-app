
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:e_commerce_app/features/shop/screens/wishlist/wish_list.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =   Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) =>controller.selectedIndex.value = index,
        backgroundColor: darkMode ? TColors.dark : TColors.white,
        indicatorColor: darkMode ? TColors.white.withValues(alpha: 0.1) : TColors.black.withValues(alpha: 0.1),

        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value])
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens =[
    const HomeScreen(),
    const Storescreen(),
    FavouriteScreen(),
    Container(color: Colors.deepOrangeAccent),
  ];
}

