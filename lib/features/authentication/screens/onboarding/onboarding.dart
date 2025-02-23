import 'package:e_commerce_app/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(body: Stack(
            children: [
      /// Horizontal Scrollable pages
      PageView(
        controller: controller.pageController,
        onPageChanged: controller.updatePageIndicator,
        children: const [
          OnBoardingPage(
            image: TImage.onBoardingImage1,
            title: TTexts.onBoardingTitle1,
            subtitle: TTexts.onBoardingSubtitle1,
          ),
          OnBoardingPage(
            image: TImage.onBoardingImage2,
            title: TTexts.onBoardingTitle2,
            subtitle: TTexts.onBoardingSubtitle2,
          ),
          OnBoardingPage(
            image: TImage.onBoardingImage3,
            title: TTexts.onBoardingTitle3,
            subtitle: TTexts.onBoardingSubtitle3,
          ),
        ],
      ),

      /// Skip Button
      const OnBoardingSkip(),

      /// Dot Navigation Smooth Page Indicator
      const OnBoardingDotNavigation(),

      /// Circular Button
      const OnBoardingNextButton(),
    ]));
  }
}
