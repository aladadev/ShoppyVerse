import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppyverse/utils/constants/sizes.dart';
import 'package:shoppyverse/utils/device/device_utility.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          imagePath,
          width: DeviceUtility.getScreenWidth() * 0.8,
          height: DeviceUtility.getScreenHeight() * 0.5,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: CustomSizes.spaceBetweenItems),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
