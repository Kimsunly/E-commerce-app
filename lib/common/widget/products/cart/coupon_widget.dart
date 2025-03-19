import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart'; // Correct import path for TSizes

class CouponCode extends StatelessWidget {
  const CouponCode({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dark ? Colors.black : Colors.white, // Corrected syntax
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(
        top: TSizes.sm,   // Corrected padding
        bottom: TSizes.sm, // Corrected padding (was 'sn')
        right: TSizes.sm,
        left: TSizes.md,
      ),
      child: Row(
        children: [
          /// **Text Field for Promo Code Input**
          Expanded(
            child: TextFormField(
              controller: CouponController.couponController, // Using controller
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
              ),
            ),
          ),

          /// **Apply Button**
          ElevatedButton(
            onPressed: () {
              CouponController.applyCoupon(context); // Apply coupon logic
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: dark ? Colors.grey[800] : Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            child: const Text('Apply'),
          ),
        ],
      ),
    );
  }
}

class CouponController {
  static final TextEditingController couponController = TextEditingController();

  static void applyCoupon(BuildContext context) {
    String code = couponController.text.trim();

    if (code.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a coupon code")),
      );
      return;
    }

    // Example hardcoded valid coupon
    bool isValid = (code == "DISCOUNT10");

    if (isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Coupon applied successfully!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid coupon code")),
      );
    }
  }
}
