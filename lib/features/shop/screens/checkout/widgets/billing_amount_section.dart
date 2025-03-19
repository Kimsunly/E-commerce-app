import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// **Subtotal**
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$256.0',  // Fixed dollar sign formatting
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ), // Row
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        /// **Shipping Fee**
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$6.0',  // Fixed dollar sign formatting
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ), // Row
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Add Tax Row here if needed
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$15.0',  // Example tax amount
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ), // Row
      ],
    );
  }
}
