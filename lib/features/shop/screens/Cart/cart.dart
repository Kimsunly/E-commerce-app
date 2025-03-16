import 'package:flutter/material.dart';

import '../../../../common/widget/appbar/appbar.dart';
import '../../../../common/widget/custom_shapes/containers/rounded_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
        backgroundColor: dark ? TColors.dark : TColors.primary, // Set backgroundColor here
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace.toDouble()),
          child: Column(
            children: [
              /// -- Items in Cart
              const CartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwSections.toDouble()),

              /// -- Coupon TextField
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.dark : TColors.white,
                padding: EdgeInsets.only(
                  top: TSizes.sm.toDouble(),
                  bottom: TSizes.sm.toDouble(),
                  right: TSizes.sm.toDouble(),
                  left: TSizes.md.toDouble(),
                ),
                child: Row(
                  children: [
                    /// TextField
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Have a promo code? Enter here',
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                    /// Button
                    SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: dark
                              ? Colors.white.withValues(alpha: 128)
                              : TColors.dark.withValues(alpha: 128),
                          backgroundColor: Colors.grey.withValues(alpha: 50),
                          side: BorderSide(color: Colors.grey.withValues(alpha: 25)),
                        ),
                        child: const Text('Apply'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  final bool showAddRemoveButtons;
  const CartItems({required this.showAddRemoveButtons, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text("Cart Items Placeholder"),
    );
  }
}
