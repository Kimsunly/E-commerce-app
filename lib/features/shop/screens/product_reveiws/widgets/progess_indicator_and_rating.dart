import 'package:flutter/material.dart';
import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
// Make sure the path is correct
// Ensure TColors is defined here
// Ensure TSizes is defined here
// Ensure TDeviceUtils is defined here

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with background color set properly
      appBar: TAppBar(
        title: const Text('Reviews & Ratings'),
        showBackArrow: true,
        backgroundColor: TColors.primary,  // Use valid color from your TColors constants
      ),

      // Body with SingleChildScrollView to make it scrollable
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
              ),
              const SizedBox(height: TSizes.spaceBtwItems),  // Space between elements

              // Overall Product Ratings Row
              Row(
                children: [
                  // Displaying the average rating (4.8)
                  Expanded(
                    flex: 3,
                    child: Text(
                      '4.8',  // Example rating
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  // Column for individual ratings (5, 4, 3, etc.)
                  const Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        TRatingProgressIndicator(text: '5', value: 1.0),
                        TRatingProgressIndicator(text: '4', value: 0.8),
                        TRatingProgressIndicator(text: '3', value: 0.6),
                        TRatingProgressIndicator(text: '2', value: 0.4),
                        TRatingProgressIndicator(text: '1', value: 0.2),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Displaying the rating number (e.g., 5, 4, 3, etc.)
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        // Progress bar for the rating value
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,  // Adjust width based on device
            child: LinearProgressIndicator(
              value: value,  // Dynamic value based on the rating
              minHeight: 11,
              backgroundColor: TColors.grey,  // Background color for the progress bar
              borderRadius: BorderRadius.circular(7),
              valueColor: AlwaysStoppedAnimation(TColors.primary),  // Progress color
            ),
          ),
        ),
      ],
    );
  }
}
