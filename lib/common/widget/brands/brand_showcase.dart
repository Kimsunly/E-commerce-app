import 'package:e_commerce_app/common/widget/brands/t_brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.white,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // brand with product
          const TBrandCard(showborder: false),
          //top3 product
          Row(
            children: images.map((image) =>
                brandTopProductImagewidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImagewidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child:  Image(
          fit: BoxFit.contain, image: AssetImage(image)),

    ),
  );
}