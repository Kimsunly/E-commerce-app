import 'package:e_commerce_app/common/widget/layouts/grid_layout.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widget/custom_shapes/containers/search_container.dart';
import '../../../../common/widget/products_cart/product_card_vertical.dart';
import '../../../../common/widget/text/sections_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap user in a scrollable view
        child: Column(
          children: [
            // Custom clipped background section
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // APPBAR
                  THomeAppbar(),
                  SizedBox(height: 10),

                  // Search Bar
                  TSearchContainer(
                    text: 'Fcking search here',
                  ), // Fixed text
                  SizedBox(height: 20),

                  // CATEGORIES SECTION
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Popular Kicks',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: 10),

                        // Categories List
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      TImage.banner1,
                      TImage.banner2,
                      TImage.banner3,
                      TImage.banner4
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),


                  TGridlayout(itemCount: 2, itemBuidler: (_,index) => const ProductCardVertical(),


                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
