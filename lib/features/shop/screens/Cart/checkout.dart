import 'package:flutter/material.dart';

import '../../../../common/widget/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart'; // Make sure to import necessary Flutter packages

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              const CartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- Coupon TextField
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.dark : TColors.white,
                padding: const EdgeInsets.only(
                    top: TSizes.sm,
                    bottom: TSizes.sm,
                    right: TSizes.sm,
                    left: TSizes.md
                ),
                child: Row(
                  children: [
                    /// TextField
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Have a promo code? Enter here',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ), // InputDecoration
                      ), // TextFormField
                    ), // Flexible

                    /// Button
                    SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          // Your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: dark
                              ? Colors.white.withOpacity(0.5)
                              : TColors.dark.withOpacity(0.5),
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          side: BorderSide(color: Colors.grey.withOpacity(0.1)),
                        ),
                        child: const Text('Apply'),
                      ), // ElevatedButton
                    ), // SizedBox
                  ], // Row children
                ), // Row
              ), // TRoundedContainer
            ], // Column children
          ),
        ),
      ),
    );
  }
}


