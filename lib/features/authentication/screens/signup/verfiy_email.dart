import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // padding to give space from all sides of the screen
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  image: AssetImage(TImage.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Title and Subtitle
              Text(TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('support@codingwith.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              Text(TTexts.confirmEmailSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                            () => SuccessScreen(
                      image: TImage.staticSuccessIllustration,
                      title: TTexts.yourAccountCreatedTitle,
                      subtitle: TTexts.yourAccountCreatedSubtitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )),
                    child: Text(TTexts.tContinue)),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(TTexts.resendEmail)),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
