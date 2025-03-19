import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../common/styles/shadows.dart';
import '../../../features/shop/screens/brand/brand_products_screen.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../image/t_rounded_image.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductshadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? Colors.grey[850] : Colors.white, // Fixed color
      ),
      child: Row(
        children: [
          /// Thumbnail Section
          TRoundedContainer(
            height: 120,
            width: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? Colors.black : Colors.white, // Fixed backgroundColor
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const TRoundedImage(
                  imageUrl: TImages.productImage1, // Corrected parameter
                  applyImageRadius: true, imageURL: '',
                ),

                /// -- Sale Tag
                Positioned(
                  top: 12,
                  left: 8,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: Colors.orange.withAlpha(200), // Fixed method
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon Button
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                    size: 24, // Set default size
                    backgroundColor: Colors.white, // Provide default color
                    width: 40,  // Set a default width
                    height: 40, // Set a default height
                  ),
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
                  Text(
                    "Product Name",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: TSizes.xs),
                  Text(
                    "\$19.99",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.green),
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

/// Provide default product image URL
class TImages {
  static const String productImage1 =
      "https://via.placeholder.com/120"; // Placeholder image
}
