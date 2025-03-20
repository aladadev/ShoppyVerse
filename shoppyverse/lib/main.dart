import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppyverse/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shoppyverse/utils/theme/theme.dart';

void main() {
  // Todo: Add widget binding
  // Todo: add splash screen
  // Todo: Init Local Storage
  // Todo: Init Firebase
  // Todo: Init Authentication
  runApp(ShoppyVerse());
}

class ShoppyVerse extends StatelessWidget {
  const ShoppyVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnboardingScreen(),
    );
  }
}
