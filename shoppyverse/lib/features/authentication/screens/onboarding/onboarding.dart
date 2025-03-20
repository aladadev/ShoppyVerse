import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppyverse/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppyverse/features/authentication/screens/onboarding/widgets/onboarding_dotnavigation.dart';
import 'package:shoppyverse/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shoppyverse/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shoppyverse/utils/constants/custom_text.dart';
import 'package:shoppyverse/utils/constants/image_constants.dart';
import 'package:shoppyverse/utils/constants/sizes.dart';
import 'package:shoppyverse/utils/device/device_utility.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageindicator,
            children: [
              OnboardingPage(
                imagePath: ImageConstants.onboarding1,
                title: CustomText.onboardingTitle1,
                subtitle: CustomText.onboardingSubtitle1,
              ),
              OnboardingPage(
                imagePath: ImageConstants.onboarding2,
                title: CustomText.onboardingTitle2,
                subtitle: CustomText.onboardingSubtitle2,
              ),
              OnboardingPage(
                imagePath: ImageConstants.onboarding3,
                title: CustomText.onboardingTitle3,
                subtitle: CustomText.onboardingSubtitle3,
              ),
            ],
          ),
          OnboardingSkip(),

          OnboardingDotNavigation(),
          OnboardingNextButton(),
        ],
      ),
    );
  }
}

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight(),

      right: CustomSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
