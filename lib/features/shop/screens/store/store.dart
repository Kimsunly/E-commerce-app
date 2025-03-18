import 'package:e_commerce_app/common/widget/appbar/appbar.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widget/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widget/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widget/products_cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widget/text/sections_heading.dart';
import 'package:e_commerce_app/common/widget/text/t_brand_title_with_text_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/image/t_circular_image.dart';
import '../../../../common/widget/products_cart/t_brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes.dart';

class Storescreen extends StatelessWidget {
  const Storescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //Searchbar
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        text: 'Search your product....',
                        showBorder: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      //feature brands
                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),

                      TGridlayout(
                          itemCount: 4,
                          mainAxisExtentet: 80,
                          itemBuidler: (_, index) {
                            return const TBrandCard(showborder: true,);
                          })
                    ],
                  ),
                ),
                bottom: const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(child: Text('Nike',),),
                    Tab(child: Text('Adidas'),),
                    Tab(child: Text('Puma'),),
                    Tab(child: Text('Jordan'),),
                    Tab(child: Text('New Balance'),),
                    Tab(child: Text('Asics'),),
                  ],

                )
              ),
            ];
          },
          body: TabBarView(
              children: [
            Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TRoundedContainer(
                    showBorder: true,
                    borderColor: TColors.white,
                    backgroundColor: Colors.transparent,
                    margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems ),
                    child: Column(
                      children: [
                        // brand with product
                        const TBrandCard(showborder: false  ),
                        //top3 product
                        Row(
                          children: [
                            Expanded(
                              child: TRoundedContainer(
                                height: 100,
                                backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey : TColors.light,
                                margin: const EdgeInsets.only(right: TSizes.sm),
                                padding: const EdgeInsets.all(TSizes.md),
                                child: const Image(fit: BoxFit.contain, image: AssetImage(TImage.Nike_Air_Force_1)),

                              ),
                            ),
                            Expanded(
                              child: TRoundedContainer(
                                height: 100,
                                backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey : TColors.light,
                                margin: const EdgeInsets.only(right: TSizes.sm),
                                padding: const EdgeInsets.all(TSizes.md),
                                child: const Image(fit: BoxFit.contain, image: AssetImage(TImage.Nike_Air_Force_1_Mid_Off_White)),

                              ),
                            ),
                            Expanded(
                              child: TRoundedContainer(
                                height: 100,
                                backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey : TColors.light,
                                margin: const EdgeInsets.only(right: TSizes.sm),
                                padding: const EdgeInsets.all(TSizes.md),
                                child: const Image(fit: BoxFit.contain, image: AssetImage(TImage.Nike_Dunk_Low_Retro)),

                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),

            ),

          ]),
        ),
      ),
    );
  }
}
