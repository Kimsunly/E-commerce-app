import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBttomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /// 1- Product Image Slider
            const TProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /// Rating & Share Button
                  const TRatingAndShare(),

                  /// Price, Title, Stock, & Brand
                  const TProductMetaData(),

                  /// Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.defaultSpace),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),

                  /// Description
                  const TSectionHeading(title: 'Description', showActionButtons: false),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const ReadMoreText(
                    'This is the description of the product and it can go up to max 4 lines. This is the description of the product and it can go up to max 4 lines.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews Section
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'Reviews', showActionButtons: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(); // Implement actual metadata display
  }
}

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(); // Implement actual rating & share logic
  }
}

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(); // Implement actual image slider
  }
}

class TBttomAddCart extends StatelessWidget {
  const TBttomAddCart({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(); // Implement bottom add to cart functionality
  }
}
