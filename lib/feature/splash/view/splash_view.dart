import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/splash/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColor.primaryDefaultColor,
      body: SplashViewBody(),
    );
  }
}