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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var products_list = [

    TImage.Nike_Dunk_Low_Retro,
    TImage.Nike_Air_Force_1_Mid_Off_White,
    TImage.Puma_Youth_Rickie_Sneake,
    TImage.Nike_Winflo_10,
    TImage.ultraboost_1_shoes,
    TImage.Puma_Up_Mens_White_Mr_Tekkie,
    TImage.Nike_Sneaker,
    TImage.Fresh_Foam_X_1080v14,
    TImage.FuelCell_Rebel_V4,
    TImage.Nike_Revolution_7,
    TImage.ultraboost_5x_shoes_1,
    TImage.Nike_Sneakers_Air_Jordan_4_Retro,

  ];
  var product_name = [
    'Nike DunkLow Retro',
    'Nike AirForce1 MidOffWhite',
    'Puma YouthRickieSneake',
    'Nike Winflo10',
    'ultraboost1 shoes',
    'Puma Up Mens White MrTekkie',
    'Nike Sneaker',
    'Fresh Foam X 1080v14',
    'FuelCell Rebel V4',
    'Nike Revolution 7',
    'ultraboost5x shoes1',
    'Nike Sneakers AirJordan 4 Retro',

  ];
  var saleta = [
    '15%','60%','78%','47%','38%','78%','48%','90%','55%','38%','10%','20%',
  ];

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
                    text: 'Search here',
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


                  //heading
                  TSectionHeading(title: 'Popular Products',onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  // -- Popular products
                  TGridlayout(itemCount: products_list.length, itemBuidler: (_,index) =>  ProductCardVertical(
                    p_image:   products_list[index],
                    name_product: product_name[index],
                    disocunt_tag: saleta[index],

                  ),)


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
