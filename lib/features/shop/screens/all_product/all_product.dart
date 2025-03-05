import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: const TAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // 1. Dropdown
              DropdownButtonFormField(
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

              /// Products
              GridLayout(
                itemCount: 8,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
