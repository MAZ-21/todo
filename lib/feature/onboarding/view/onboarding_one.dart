import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/onboarding/view/widgets/onboarding_one_view_body.dart';


class OnboardingOneView extends StatelessWidget {
  const OnboardingOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: OnboardingOneViewBody(),
    );
  }
}