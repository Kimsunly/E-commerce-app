import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/image/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        backgroundColor: TColors.primary,
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

              // Combined Rating and Progress Indicator
              const RatingProgressIndicator(),

              // Cart Items
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Rating',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: TSizes.spaceBetweenItems),

        // Rating Bar
        RatingBarIndicator(
          rating: 4.5,
          itemCount: 5,
          unratedColor: TColors.grey,
          itemBuilder: (_, __) => const Icon(
            Iconsax.star,
            color: TColors.primary,
          ),
        ),
        SizedBox(height: TSizes.spaceBetweenItems),

        // Progress Indicator Title
        const Text(
          'Order Progress',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: TSizes.spaceBetweenItems),

        // Linear Progress Indicator
        const LinearProgressIndicator(
          value: 0.7, // Set your progress percentage here (0.0 to 1.0)
          color: TColors.primary,
          backgroundColor: TColors.grey, // Background color for the progress bar
        ),
      ],
    );
  }
}

class TCartItem extends StatelessWidget {
  final List<Widget> children;
  const TCartItem({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: children,
    );
  }
}

class ProductTitleText extends StatelessWidget {
  final String title;
  final int maxLines;

  const ProductTitleText({super.key, required this.title, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  final String title;

  const TBrandTitleWithVerifiedIcon({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const Icon(Icons.check, color: TColors.primary), // You can replace with your own verified icon
      ],
    );
  }
}

class CircularIcon extends StatelessWidget {
  final IconData icon;
  final int width;
  final int height;
  final double size;
  final Color color;
  final Color backgroundColor;

  const CircularIcon({super.key,
    required this.icon,
    required this.width,
    required this.height,
    required this.size,
    required this.color,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.toDouble(),
      height: height.toDouble(),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
