import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/common/widgets/text/t_brand_title_with_verified_icon.dart';

import '../../TEST_Flutter/flutter/examples/api/lib/material/context_menu/editable_text_toolbar_builder.1.dart';
import '../../TEST_Flutter/flutter/packages/flutter/lib/cupertino.dart';
import '../../TEST_Flutter/flutter/packages/flutter/lib/src/material/elevated_button.dart';
import '../../TEST_Flutter/flutter/packages/flutter/test/widgets/list_body_test.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar( ShowBackAroww:true , title:text('Cart',style: Theme.of(context).textTheme.headlineSmall,),
          body Padding(padding: padding(all:TSizes.defaultSpace),
      child: SingleChildScrollView(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (_, __) =>
              const SizedBox(height: TSizes.spaceBtwSections),
              itemCount: 4,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    TCartItem(
                      children: [
                        /// Product Image
                        TRoundedImage(
                          imageUrl: TImages.productImage1,
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(TSizes.sm),
                          backgroundColor: THelperFunctions.isDarkMode(context)
                              ? TColors.darkerGrey
                              : TColors.light,
                        ),

                        const SizedBox(width: TSizes.spaceBtwItems),

                        /// Title, Price, & Size
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Brand Title with Verified Icon
                              const TBrandTitleWithVerifiedIcon(title: 'Nike'),

                              /// Product Title
                              const Flexible(
                                child: ProductTitleText(
                                  title: 'Black Sports Shoes!',
                                  maxLines: 1,
                                ),
                              ),

                              /// Attributes (Color & Size)
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Color: ',
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                    TextSpan(
                                      text: 'Green ',
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    TextSpan(
                                      text: 'Size: ',
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                    TextSpan(
                                      text: 'UK 08',
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Row(
                      children: [
                        const SizedBox(width: 70),
                        // Add Remove Buttons
                        CircularIcon(
                          icon: Iconsax.minus,
                          width: 32,
                          height: 32,
                          size: TSizes.md,
                          color: THelperFunctions.isDarkMode(context)
                              ? TColors.white
                              : TColors.black,
                          backgroundColor: THelperFunctions.isDarkMode(context)
                              ? TColors.darkerGrey
                              : TColors.light,
                        ), // CircularIcon
                        const SizedBox(width: TSizes.spaceBtwItems),
                        Text('2', style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        const CircularIcon(
                          icon: Iconsax.add,
                          width: 32,
                          height: 32,
                          size: TSizes.md,
                          color: TColors.white,
                          backgroundColor: TColors.primary,
                        ), // CircularIcon
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          // Checkout Button
          bottomNavigationBar :padding (
              padding const EdgeInsets.all(TSizes.defaultSpace),
          child :ElevatedButton(onPressed: (){},child: const Text ('checkout \n \$ 200.00',style: TextStyle(fontSize: 20),),
          )
      ),
    );
  }
}

