import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart'; // Ensure correct import path

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// **Section Heading**
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {
            // Handle button press action here
          },
        ),

        /// **Shipping Address Text**
        Text(
          'Coding with T',
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        /// **Spacing between items**
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        /// **Phone Number Row**
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '+92-317-8059525',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),

        /// **Spacing between rows**
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        /// **Location Row**
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: Text(
                'South Liana, Maine 87695, USA',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// **Fix: Define `SectionHeading` Properly**
class SectionHeading extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;

  const SectionHeading({
    super.key,
    required this.title,
    required this.buttonTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(buttonTitle),
        ),
      ],
    );
  }
}
