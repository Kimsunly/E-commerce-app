import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
    required this.address,
    required this.city,
    required this.country,
    required this.onEdit,
  });

  final bool selectedAddress;
  final String address;
  final String city;
  final String country;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunctions.isDarkMode(context);

    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withAlpha(50) // Updated from withOpacity(0.2)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : (isDarkMode ? TColors.darkerGrey : TColors.grey),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(address, style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 4),
                    Text("$city, $country", style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                Row(
                  children: [
                    if (selectedAddress)
                      const Icon(Iconsax.tick_circle, color: Colors.green, size: 24),
                    IconButton(
                      icon: const Icon(Iconsax.edit, color: Colors.blue),
                      onPressed: onEdit,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
