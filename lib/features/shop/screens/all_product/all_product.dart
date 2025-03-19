import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/appbar/appbar.dart' show TAppBar;
import '../../../../common/widget/products_cart/product_card_vertical.dart';
import '../../../../utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: const TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
        backgroundColor: Colors.blue, // Use a default color instead of null
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // 1. Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                ),
                onChanged: (value) {},
                items: [
                  'Name', 'Higher Price', 'Lower Price',
                  'Sale', 'Newest', 'Popularity'
                ].map((option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                )).toList(),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Products Grid
              GridView.builder(
                shrinkWrap: true, // To avoid unbounded height error
                physics: NeverScrollableScrollPhysics(), // Disable scrolling within the Grid
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // You can adjust the number of columns here
                  crossAxisSpacing: 8.0, // Adjust horizontal spacing
                  mainAxisSpacing: 8.0, // Adjust vertical spacing
                ),
                itemCount: 8, // Number of items in the grid
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
