import 'package:flutter/material.dart'; // Flutter material package
import '../../../../../common/widget/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart'; // Assuming correct import for sizes
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart'; // Assuming correct import for helper functions

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context); // Check for dark mode

    return ListView.separated(
      shrinkWrap: true, // Shrink the list to fit its content
      itemCount: 10, // Number of items in the list
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems), // Space between items
      itemBuilder: (_, index) {
        return TRoundedContainer(
          showBorder: true,
          padding: const EdgeInsets.all(TSizes.md), // Padding from TSizes.md
          backgroundColor: dark ? Colors.black : Colors.white, // Background color based on dark mode
          child: Column(
            mainAxisSize: MainAxisSize.min, // Use min to avoid unnecessary space
            children: [
              // -- Row 1 (Shipping Icon and Status)
              Row(
                children: [
                  const Icon(
                    Icons.local_shipping, // Default shipping icon
                    size: 24,
                    color: Colors.grey, // Color for the icon
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems / 2), // Spacing between icon and text

                  // Status & Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: TColors.primary,
                            fontWeightDelta: 1,
                          ),
                        ),
                        Text(
                          '07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),

                  // Arrow Icon Button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: TSizes.iconSm,
                    ),
                  ),
                ],
              ),

              // -- Row 2 (Order Tag and Date)
              Row(
                children: [
                  // 1 - Icon (Order Tag)
                  const Icon(
                    Icons.tag, // Order Tag Icon
                    size: 24,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems / 2), // Spacing between icon and text

                  // 2 - Status & Order ID
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order', // Status label
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Text(
                          '[#256f2]', // Order ID
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // -- Spacer between rows
              SizedBox(height: TSizes.spaceBtwItems),

              // -- Row 3 (Calendar Icon and Date)
              Row(
                children: [
                  // 1 - Icon (Calendar)
                  const Icon(
                    Icons.calendar_today, // Calendar Icon
                    size: 24,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems / 2), // Spacing between icon and text

                  // 2 - Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date', // Label for the date
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: TColors.primary,
                          ),
                        ),
                        Text(
                          '08 Nov 2024', // Example date (can be dynamic)
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
