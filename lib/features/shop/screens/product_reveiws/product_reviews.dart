import 'package:flutter/material.dart';
import '../../../../common/widget/appbar/appbar.dart'; // Ensure this is correct
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart'; // Import other necessary packages

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: TAppBar(
        title: const Text('Reviews & Ratings'),
        showBackArrow: true,
        backgroundColor: TColors.primary,  // Ensure you pass a valid color here (non-null)
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Ratings
              Row(
                children: [
                  // Displaying the average rating (4.8)
                  Expanded(
                    flex: 3,
                    child: Text(
                      '4.8',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
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
              // Add more sections for other reviews, user feedback, etc.
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
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value, // The dynamic rating value
              minHeight: 11,
              backgroundColor: TColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: AlwaysStoppedAnimation(TColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
