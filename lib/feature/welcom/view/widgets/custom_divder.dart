import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';

class CustomDivder extends StatelessWidget {
  const CustomDivder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColor.neutralSecondaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'or continue with',
            style: TextStyle(color: AppColor.neutralSecondaryColor),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColor.neutralSecondaryColor,
          ),
        ),
      ],
    );
  }
}