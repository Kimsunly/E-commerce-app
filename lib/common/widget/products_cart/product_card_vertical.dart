import 'package:e_commerce_app/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widget/image/t_rounded_image.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/shadows.dart';
import '../icons/t_circular_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductshadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.dark : TColors.softGrey,
      ),
      child: Column(
        children: [
          // Thumbnail
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.softGrey,
            child: Stack(
              children: [
                // Thumbnail Image
                TRoundedImage(
                  imageURL: TImage.product1,
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

          //--detail
           Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              children: [
                Text(
                  'Black Aura Airforce',
                  style: Theme.of(context).textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,



                )
              ],

            ),
          )
        ],
      ),
    );
  }
}
