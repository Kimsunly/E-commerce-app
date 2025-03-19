import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  final String userName;
  final String userProfileImage;
  final double rating;
  final String reviewText;
  final String reviewDate;

  const UserReviewCard({
    super.key,
    required this.userName,
    required this.userProfileImage,
    required this.rating,
    required this.reviewText,
    required this.reviewDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: TSizes.spaceBetweenItems),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Row(
          children: [
            // User Profile Image
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(userProfileImage), // You can also use AssetImage if using local assets
            ),
            SizedBox(width: TSizes.spaceBtwItems),

            // Review Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Name
                  Text(
                    userName,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // Rating Bar
                  RatingBarIndicator(
                    rating: rating,
                    itemCount: 5,
                    unratedColor: TColors.grey,
                    itemBuilder: (_, __) => const Icon(
                      Iconsax.star,
                      color: TColors.primary,
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // Review Text (using ReadMoreText if required)
                  Text(
                    reviewText,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // Review Date
                  Text(
                    reviewDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            // Icon Button for More Options (optional)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
