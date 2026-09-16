import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/utils/size_config.dart';

class OnboardingTabViewBody extends StatelessWidget {
  const OnboardingTabViewBody({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });
  final String imagePath;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: .bottomCenter,
          children: [
            SvgPicture.asset(imagePath),
            Container(
              height: SizeConfig.responsiveHeight(context, 200),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColor.whiteColor,
                    AppColor.whiteColor,
                    AppColor.whiteColor.withAlpha(0),
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: AppColor.neutralSecondaryColor),
        ),
      ],
    );
  }
}
