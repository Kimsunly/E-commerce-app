import 'package:e_commerce_app/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widget/image/t_rounded_image.dart';
import 'package:e_commerce_app/common/widget/text/product_price_text.dart';
import 'package:e_commerce_app/common/widget/text/product_title_text.dart';
import 'package:e_commerce_app/common/widget/text/t_brand_title_with_text_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/shadows.dart';
import '../icons/t_circular_icon.dart';
import '../text/t_brand_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  final String p_image;
  final String name_product;
   ProductCardVertical({super.key, required this.p_image, required this.name_product});

  get color => null;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductshadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.light : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            TRoundedContainer(
              height:165,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.light : TColors.softGrey,
              child: Stack(
                children: [
                  // Thumbnail Image
                  TRoundedImage(
                    imageURL: p_image,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 11,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '75%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  // Favourite Icon Button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularicon(
                        icon: Iconsax.heart5,
                        dark: dark,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            //--detail
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: name_product,
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      TBrandTitleWithTextVerifiedIcon(title: 'Nike')
                    ],
                  ),


                ],
              ),
            ),


        const Spacer(),


        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Price
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: const TProductPriceText(price: '35',),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(TSizes.cardRadiusMd),
                    bottomRight:
                    Radius.circular(TSizes.productImageRadius))),
            child: SizedBox(
                width: TSizes.iconLg * 1.2,
                height: TSizes.iconLg * 1.2,
                child: Center(
                  child: const Icon(
                    Iconsax.add,
                    color: TColors.white,
                  ),
                )),
          ),
        ],
      ),


          ],
        ),
      ),
    );
  }
}


