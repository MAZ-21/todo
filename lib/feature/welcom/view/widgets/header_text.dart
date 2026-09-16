import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome To ',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        Text(
          'TodoApp',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryDefaultColor,
          ),
        ),
      ],
    );
  }
}
