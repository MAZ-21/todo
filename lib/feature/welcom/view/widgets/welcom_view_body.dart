import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/asset/app_images.dart';
import 'package:todo/core/shared/custom_elevated_button.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/onboarding_tab/view/widgets/onboarding_tab_view_body.dart';
import 'package:todo/feature/signup/data/auth/sign_up_auth.dart';
import 'package:todo/feature/signup/data/repo/sign_up_repo_impl.dart';
import 'package:todo/feature/signup/presentation/view/widget/sign_up_view_body.dart';
import 'package:todo/feature/welcom/data/auth/google_sign_in.dart';
import 'package:todo/feature/welcom/data/repo/google_service_repo.dart';
import 'package:todo/feature/welcom/data/repo/google_service_repo_impl.dart';
import 'package:todo/feature/welcom/view/widgets/custom_divder.dart';
import 'package:todo/feature/welcom/view/widgets/header_text.dart';
import 'package:todo/feature/welcom/view/widgets/sign_in_buttons.dart';


class WelcomViewBody extends StatelessWidget {
  const WelcomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.responsiveHeight(context, 25),
        ),
        child: Column(
          children: [
            HeaderText(),

            SizedBox(height: SizeConfig.responsiveHeight(context, 53)),

            const OnboardingTabViewBody(
              imagePath: AppImages.onboardingThree,
              title: '',
              description: '',
            ),
            SizedBox(height: SizeConfig.responsiveHeight(context, 59)),
            CustomElevatedButton(
              onpress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpViewBody(signUpRepo:  SignUpRepoImpl(authService: SignUpAuth()))));
              },
              customContent: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.message),
                  SizedBox(width: 8),
                  Text(
                    'Continue with email',
                    style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              title: '',
            ),
            SizedBox(height: SizeConfig.responsiveHeight(context, 16)),
            CustomDivder(),
            SizedBox(height: SizeConfig.responsiveHeight(context, 16)),
            SignInButtons(googleServiceRepo: GoogleServiceRepoImpl(googleSignInService: GoogleSignInService()),),
          ],
        ),
      ),
    );
  }
}

