import 'package:flutter/material.dart';
import 'package:shoppyverse/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppyverse/utils/constants/sizes.dart';
import 'package:shoppyverse/utils/device/device_utility.dart';
import 'package:shoppyverse/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final isDarkMode = HelperFunction.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight() + 10,
      left: CustomSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: controller.onDotClicked,
        controller: controller.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
