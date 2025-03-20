import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find<OnboardingController>();

  final PageController pageController = PageController();
  final currentPageIndex = 0.obs;

  // UUpdate the current page index
  void updatePageindicator(int index) {
    currentPageIndex.value = index;
  }

  void onDotClicked(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void nextPage() {
    if (currentPageIndex.value < 2) {
      currentPageIndex.value++;
      pageController.animateToPage(
        currentPageIndex.value,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void onSkipClicked() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      currentPageIndex.value,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
