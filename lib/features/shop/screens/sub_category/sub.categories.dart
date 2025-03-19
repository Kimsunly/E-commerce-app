import 'package:flutter/material.dart';
import '../../../../common/widget/appbar/appbar.dart';
import '../../../../common/widget/image/t_rounded_image.dart';
import '../../../../utils/constants/sizes.dart';
import '../checkout/widgets/billing_address_section.dart';  // If this is needed elsewhere in the screen

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports'),
        showBackArrow: true,
        backgroundColor: Colors.transparent, // Use a valid color here
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner4, // Make sure this exists
                applyImageRadius: true,
                imageURL: '',
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  SectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {}, // Ensure it's correctly handled
                    buttonTitle: '', // Button title for optional use
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  /// Product Card
                  const TProductCardHorizontal(), // Product card widget
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 4, offset: Offset(0, 4))],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? Colors.grey[850] : Colors.white,
      ),
      child: Row(
        children: [
          /// Thumbnail Section
          Container(
            height: 120,
            width: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            color: dark ? Colors.black : Colors.white,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                TRoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                  imageURL: '',
                ),

                /// -- Sale Tag
                Positioned(
                  top: 12,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(TSizes.sm),
                      color: Colors.orange.withAlpha(200),
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon Button
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(Icons.favorite, color: Colors.red, size: 24),
                ),
              ],
            ),
          ),

          /// Product Details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Name", style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: TSizes.xs),
                  Text(
                    "\$19.99",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TImages {
  static const String promoBanner4 = "https://via.placeholder.com/500x200"; // Placeholder for the banner
  static const String productImage1 = "https://via.placeholder.com/120"; // Placeholder for product image
}
