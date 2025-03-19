import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart'; // Make sure the path is correct
import '../../utils/helpers/helper_functions.dart'; // Correct path to your helper file

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ThelperFunctions.isDarkMode(context); // Check if it's dark mode

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,  // Replace TSizes.defaultSpace with actual value
        vertical: 8.0,    // TSizes.defaultSpace / 2
      ),
      decoration: BoxDecoration(
        color: dark ? Colors.grey[850] : Colors.grey[200], // Use color according to dark mode
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),  // Replace TSizes.cardRadiusLg with actual value
          topRight: Radius.circular(20.0), // Same here
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row for minus button, quantity, and add button
          Row(
            children: [
              // Minus Icon Button
              TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              const SizedBox(width: 8.0), // Space between items (adjust accordingly)

              // Quantity Text (e.g., '2')
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall, // Text style based on theme
              ),

              const SizedBox(width: 8.0), // Space between items (adjust accordingly)

              // Add Icon Button
              TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.black,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),

          // Add to Cart button
          ElevatedButton(
            onPressed: () {
              // Implement the action here (e.g., adding item to cart)
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12.0), // Adjust padding if needed
              backgroundColor: dark ? Colors.blueGrey : Colors.blue, // Button background color
              side: const BorderSide(color: TColors.black), // Border color
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }

  TCircularIcon({required IconData icon, required Color backgroundColor, required int width, required int height, required Color color}) {}
}
