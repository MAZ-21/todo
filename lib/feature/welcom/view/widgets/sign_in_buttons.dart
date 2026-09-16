import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/shared/custom_elevated_button.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/welcom/data/auth/google_sign_in.dart';
import 'package:todo/feature/welcom/data/repo/google_service_repo.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key, required this.googleServiceRepo});
  final GoogleServiceRepo googleServiceRepo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            onpress: () {},
            btnColor: AppColor.primaryBackgroundColor,
            customContent: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.facebook),
                SizedBox(width: 13),
                Text(
                  'Facebook',
                  style: TextStyle(
                    color: AppColor.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            title: '',
          ),
        ),
        SizedBox(width: SizeConfig.responsiveWidth(context, 15.5)),
        Expanded(
          child: CustomElevatedButton(
            onpress: () async {
              await googleServiceRepo.googleSignIn();
              context.go('create-task');
            },
            btnColor: AppColor.primaryBackgroundColor,
            customContent: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.google),
                SizedBox(width: 13),
                Text(
                  'Google',
                  style: TextStyle(
                    color: AppColor.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            title: '',
          ),
        ),
      ],
    );
  }
}
