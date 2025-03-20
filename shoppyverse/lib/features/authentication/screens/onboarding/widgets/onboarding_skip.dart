import 'package:flutter/material.dart';
import 'package:shoppyverse/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppyverse/utils/constants/sizes.dart';
import 'package:shoppyverse/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      right: CustomSizes.defaultSpace,
      top: DeviceUtility.getStatusBarHeight(),
      child: TextButton(
        onPressed: () {
          controller.onSkipClicked();
        },
        child: Text('Skip'),
      ),
    );
  }
}
