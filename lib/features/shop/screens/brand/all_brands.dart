import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX for navigation
import '../../../../common/widget/appbar/appbar.dart';
import '../../../../common/widget/text/sections_heading.dart';
// Assuming you have this custom widget
import '../../../../utils/constants/sizes.dart';
import 'brand_products.dart';
// Assuming this is where BrandProducts is defined

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
        backgroundColor: Colors.transparent, // Set transparent background
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Brands Grid
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()), // Navigate to the brand's product list
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TGridLayout extends StatelessWidget {
  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  const TGridLayout({super.key,
    required this.itemCount,
    required this.mainAxisExtent,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // To prevent scrolling issues
      physics: NeverScrollableScrollPhysics(), // Disable scrolling
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        mainAxisExtent: mainAxisExtent, // Height of each grid item
        crossAxisSpacing: TSizes.spaceBtwItems, // Spacing between items
        mainAxisSpacing: TSizes.spaceBtwItems, // Spacing between items
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
