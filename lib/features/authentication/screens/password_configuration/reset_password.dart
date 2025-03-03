import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Image
            Image(image:  AssetImage(TImage.deliveredEmailIllustration), width: THelperFunctions.screenWidth()*0.6),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// Title and Subtitle
            Text(TTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('SupportTeamSMOS@JTT.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            Text(TTexts.changeYourPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// Buttons
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=> const LoginScreen()), child: Text(TTexts.done)),),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(TTexts.resendEmail)),),
            const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),

        ),
      ),
    );
  }
}
