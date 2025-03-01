import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});


  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight*2,
          child: Column(
            children: [
            /// Image
            Image(image:  AssetImage(image), width: THelperFunctions.screenWidth()*0.6),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// Title and Subtitle
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('support@codingwith.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            Text(subtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: Text(TTexts.tContinue)),),

            ],
          ),
        ),
      ),
    );
  }
}
