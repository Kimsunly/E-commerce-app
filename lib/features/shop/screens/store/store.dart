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
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes.dart';
class Storescreen extends StatelessWidget {
  const Storescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme
            .of(context)
            .textTheme
            .headlineMedium,),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),

      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  //Searchbar
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSearchContainer(text: 'What the fck do you want',showBorder: false, padding: EdgeInsets.zero,),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  //feature brands
                TSectionHeading(title: 'Featured Brands',showActionButton: true,onPressed: (){},),
                const SizedBox(height: TSizes.spaceBtwItems/1.5,),

                  TGridlayout(itemCount: 4, mainAxisExtentet: 80  , itemBuidler: (_,index){
                    return GestureDetector(
                      onTap: (){},
                      child: TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            //icon
                            TCircularimage(
                                image: TImage.nikelogo,
                              backgroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context)? TColors.white : TColors.dark,
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems / 2,),

                            //text
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TBrandTitleWithTextVerifiedIcon(title: 'NIKE',brandTextSize: TextSizes.large,),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),

            ),

          ),
        ];
      }, body: Container(),
      ),


    );
  }
}


