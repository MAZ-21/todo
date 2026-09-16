import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo/core/styles/app_color.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.pageController,
    required this.isTeal,
  });

  final PageController pageController;
  final bool isTeal;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 2,
      effect: WormEffect(
        dotHeight: 12,
        dotWidth: 12,
        dotColor: isTeal ? Colors.white: AppColor.neutralGhostColor,
        activeDotColor: isTeal ? Colors.white : AppColor.primaryDefaultColor,
      ),
    );
  }
}
