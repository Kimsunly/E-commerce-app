
import 'package:flutter/material.dart' show BuildContext, Column, CrossAxisAlignment, EdgeInsets, ElevatedButton, Expanded, Flexible, Icon, ListView, MainAxisSize, NeverScrollableScrollPhysics, Padding, Row, Scaffold, SingleChildScrollView, SizedBox, StatelessWidget, Text, TextSpan, TextStyle, Theme, Widget;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/image/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../brand/brand_products_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        backgroundColor: TColors.primary, // Set background color here
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
              ),
              SizedBox(height: TSizes.spaceBetweenItems),
              const TOveralProductRating(),
              RatingBarIndicator(
                rating: 4.5,
                itemCount: 5,
                unratedColor: TColors.grey,
                itemBuilder: (_, __) => const Icon(
                  Iconsax.star,
                  color: TColors.primary,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      TCartItem(
                        children: [
                          TRoundedImage(
                            imageUrl: 'assets/images/product_image_1.png', // Use a valid image path
                            width: 60,
                            height: 60,
                            padding: const EdgeInsets.all(TSizes.sm),
                            backgroundColor: TColors.light,
                            imageURL: "",
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TBrandTitleWithVerifiedIcon(title: 'Nike'),
                                Flexible(
                                  child: ProductTitleText(
                                    title: 'Black Sports Shoes!',
                                    maxLines: 1,
                                  ),
                                ),
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
                          CircularIcon(
                            icon: Iconsax.minus,
                            width: 32,
                            height: 32,
                            size: TSizes.md,
                            color: TColors.black,
                            backgroundColor: TColors.light,
                          ),
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
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Checkout \n \$ 200.00',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

// Other classes remain the same
