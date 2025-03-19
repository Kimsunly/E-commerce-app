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
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        backgroundColor: dark ? TColors.dark : TColors.primary,
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
              TCouponCode(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- Billing Section (added based on your original code)
              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md.toDouble()),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    BillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    PaymentMethods(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Address(),
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

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
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
                border: InputBorder.none, // Default border
                focusedBorder: InputBorder.none, // Focused border
                enabledBorder: InputBorder.none, // Enabled border
                errorBorder: InputBorder.none, // Error border
                disabledBorder: InputBorder.none, // Disabled border
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
                    ? Colors.white.withValues(alpha: 128) // Corrected here
                    : TColors.dark.withValues(alpha: 128), // Corrected here
                backgroundColor: Colors.grey.withValues(alpha: 50), // Corrected here
                side: BorderSide(color: Colors.grey.withValues(alpha: 25)), // Corrected here
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
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
      padding: const EdgeInsets.all(10.0),
      child: const Text("Cart Items Placeholder"),
    );
  }
}

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // -- Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // -- Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$16.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // -- Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // -- Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$278.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Payment Methods Placeholder');
  }
}

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Address Placeholder');
  }
}
