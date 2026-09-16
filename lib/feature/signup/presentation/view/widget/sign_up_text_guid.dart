import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';

class SignUpTextGuid extends StatelessWidget {
  const SignUpTextGuid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Create account', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(
            'Create your account and feel the benefits',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.primaryFocusedColor),
          ),
        ],
      ),
    );
  }
}
