import 'package:flutter/material.dart';
import '../../../../common/widget/appbar/appbar.dart';  // Make sure the path is correct
import '../../../../utils/constants/colors.dart';  // Ensure TColors is defined here
import '../../../../utils/constants/sizes.dart';  // Ensure TSizes is defined here
import '../../../../utils/device/device_utility.dart';  // Ensure TDeviceUtils is defined here

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with title and back arrow
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
        backgroundColor: Colors.transparent,  // Set backgroundColor to transparent or any color you like
      ),

      // Body: Scrollable content
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace), // Ensure TSizes.defaultSpace is defined
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Introduction text
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
              ),
              const SizedBox(height: TSizes.spaceBtwItems),  // Ensure TSizes.spaceBtwItems is defined

              // Overall Product Ratings Section
              const TOverallProductRating(),

              // Rating bar indicator with dynamic rating (3.5 for example)
              const TRatingBarIndicator(rating: 3.5),

              // Text displaying the number of reviews
              Text(
                "12,611 reviews",  // Displaying the number of reviews
                style: Theme.of(context).textTheme.bodySmall,
              ),

              // Spacer between sections
              const SizedBox(height: TSizes.spaceBtwSections),  // Ensure TSizes.spaceBtwSections is defined

              // User reviews section (Placeholder for user reviews list)
              const Text("User Reviews will go here."),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget to display the overall product rating (e.g., 4.8 stars)
class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Displaying the overall rating (example: 4.8 stars)
        Expanded(
          flex: 3,
          child: Text(
            '4.8', // Example of the overall rating
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        // Star rating can be added here (you can use icons or any other method)
        Expanded(
          flex: 7,
          child: Row(
            children: List.generate(5, (index) {
              return Icon(
                Icons.star,  // Using a star icon to represent the rating
                color: index < 4 ? TColors.primary : TColors.grey,  // Highlight stars based on rating
                size: 20,
              );
            }),
          ),
        ),
      ],
    );
  }
}

// Widget to show individual rating bar with progress indicator (e.g., for 5 stars)
class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Displaying the rating number (e.g., 5 stars)
        Expanded(
          flex: 1,
          child: Text(
            '$rating',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        // Rating progress bar with dynamic width based on rating
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: rating / 5,  // Convert rating to progress (e.g., 3.5 / 5)
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
