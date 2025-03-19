import 'package:flutter/material.dart';
import '../../../../../common/widget/products/cart/add_remove_button.dart';
import '../../../../../utils/constants/sizes.dart'; // Import the necessary files

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) {
        return Column(
          children: [
            // Cart Item (replace with the correct widget name like CartItem)
            const CartItems(),
            if (showAddRemoveButtons)
              const SizedBox(height: TSizes.spaceBtwItems),
            // Add Remove Button Row with total Price
            if (showAddRemoveButtons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Extra Space
                      const SizedBox(width: 70),
                      // Add Remove Buttons
                      const ProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  // Product total price
                  const ProductPriceText(price: '256'),
                ],
              ),
          ],
        );
      },
    );
  }
}

class ProductPriceText extends StatelessWidget {
  final String price;

  const ProductPriceText({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$price',
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
