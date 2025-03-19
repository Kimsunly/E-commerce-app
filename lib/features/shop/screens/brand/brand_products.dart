import 'package:flutter/material.dart';
import '../../../../common/widget/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/colors.dart';

// Assuming TBrandCard is a widget displaying brand details
class TBrandCard extends StatelessWidget {
  final bool showBorder;

  const TBrandCard({super.key, this.showBorder = false, required Future? Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: showBorder
          ? Border.all(color: TColors.primary, width: 2) // Border if showBorder is true
          : null,
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Row(
          children: [
            Image.asset('assets/images/nike_logo.png', width: 50, height: 50), // Example logo
            const SizedBox(width: TSizes.spaceBtwItems),
            const Text(
              'Nike',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Assuming TSortableProducts is a widget to display a list of products
class TSortableProducts extends StatelessWidget {
  const TSortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return Card(
          child: ListTile(
            leading: Image.asset('assets/images/product_image.png', width: 50, height: 50),
            title: Text('Product $index'),
            subtitle: Text('Description of Product $index'),
            trailing: Text('\$${(index + 1) * 10}'),
          ),
        );
      }),
    );
  }
}

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text('Nike'),
        backgroundColor: TColors.primary, // You can set your desired color here
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Brand Detail
              TBrandCard(showBorder: true, onTap: () {
                return null;
                },),  // Now it works as a proper widget
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Brand Description
              const Text(
                'Nike is one of the world\'s largest suppliers of athletic shoes, apparel, and sports equipment.',
                style: TextStyle(fontSize: 16, color: TColors.grey),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sorting Options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort by:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    items: <String>['Price Low to High', 'Price High to Low', 'Newest First']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // Add sorting functionality here
                    },
                    hint: const Text('Select Sort Option'),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sortable Products List
              const TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
