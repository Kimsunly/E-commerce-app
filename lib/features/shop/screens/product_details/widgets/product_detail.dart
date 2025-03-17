import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/TEST_Flutter/flutter/packages/flutter/lib/material.dart';
import 'product_attributes.dart' show TProductAttributes;

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBttomaddcart(),
      body: SingleChildScrollView(
          child: Column(
              children: [
              /// Product Image Slider
              TProductImageSlider(),

          /// Product Details
          Padding(
            padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace ,bottom: TSizes.defaultSpace),
            child: Column(
                children: [
                /// Rating & Share Button
                TRatingAndShare(),

            /// Price, Title, Stock, & Brand
            TProductMetaData(),

            /// Attributes (Placeholder for additional details)
            TProductAttributes(),
            const SizedBox(height: TSizes.defaultSpace),
            /// Checkout Button
            SizedBox(width: duoble.infinity, child: ElevatedButton(onPressed: (){}, child: Text('checkout'))),
            /// Description
            const TSectionHeading(title: 'Description', showActionButtons: false),
            const SizedBox(height: TSizes.SpaceBtwsecttion),
            const ReadMoreText(
              'This is the description of the product and it can go up to max 4 lines. This is the description of the product and it can go up to max 4 lines. This is the description of the product and it can go up to max 4 lines. This is the description of the product and it can go up to max 4 lines.',
              trimlines :2,
              trimMode: trimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              morestyle:TextStyle(fontSize: 14,fontwigth: FontWeight.w800),
              lessstyle:TextStyle(fontSize: 14,fontwigth: FontWeight.w800),
            ),
            /// Reviews
            const Driver(),
            const SizedBox(height: TSizes.SpaceBtwsecttion),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                const TSectionHeading(title: 'Reviews', showActionButtons: false),

          )
      )
      ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}
