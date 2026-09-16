import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/utils/size_config.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onpress,
    required this.title,
    this.customContent,
    this.btnColor,
    this.height,
    this.width,
  });
  final VoidCallback onpress;
  final String title;
  final Widget? customContent;
  final Color? btnColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.responsiveHeight(context, height ?? 56),
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor ?? AppColor.primaryDefaultColor,
        ),
        child:
            customContent ??
            Text(
              title,
              style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
      ),
    );
  }
}
