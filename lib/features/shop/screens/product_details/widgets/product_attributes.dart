import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../TEST_Flutter/flutter/packages/flutter/lib/rendering.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          backroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              const TSectionHeading(title: 'Variation', showActionButtons: false),
              const SizedBox(height: TSizes.defaultSpace),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const TProductTitleText(title: 'Price: ', smallSize: true),
                      const SizedBox(width: TSizes.defaultSpace),
                      /// Actual Price
                      Text(
                        '\$ 125',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: TSizes.defaultSpace),
                      /// Sale Price
                      const TProductTitleText(title: '\$ 20'),
                    ],
                  ),
                  Row(
                    children: [
                      const TProductTitleText(title: 'Stock: ', smallSize: true),
                      const SizedBox(width: TSizes.defaultSpace),
                      Text(
                        'In Stock',
                        style: Theme.of(context).textTheme.titleSmall!.apply(color: dark ? TColors.white : TColors.black),
                      ),
                    ],
                  ),
                ],
              ),
              /// Variation Description
              const TProductTitleText(
                title: 'This is the description of the product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        /// -- Attributes
        Column(
          CrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showactionButtons: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                Tchoicechip(Text:'green',selected:false,onSelected:(value){}),
                Tchoicechip(Text:'blue',selected:true,onSelected:(value){}),
                Tchoicechip(Text:'yellow',selected:false,onSelected:(value){}),

              ],
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          CrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size',showactionButtons: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                Tchoicechip(Text:'EU 34',selected:true,onSelected:(value){}),
                Tchoicechip(Text:'EU 36',selected:false,onSelected:(value){}),
                Tchoicechip(Text:'EU 38',selected:false,onSelected:(value){}),

              ],
            ),
          ],
        ),
      ],
    );
  }
}
