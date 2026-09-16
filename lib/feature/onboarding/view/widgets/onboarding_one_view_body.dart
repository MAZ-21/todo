import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/core/asset/app_images.dart';
import 'package:todo/core/shared/custom_elevated_button.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/onboarding/view/widgets/custom_page_indicator.dart';
import 'package:todo/feature/onboarding_tab/view/widgets/onboarding_tab_view_body.dart';

class OnboardingOneViewBody extends StatefulWidget {
  const OnboardingOneViewBody({super.key});

  @override
  State<OnboardingOneViewBody> createState() => _OnboardingOneViewBodyState();
}

class _OnboardingOneViewBodyState extends State<OnboardingOneViewBody> {
  late PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.responsiveWidth(context, 24.0),
        ),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Padding(
              padding: .only(top: SizeConfig.responsiveHeight(context, 68)),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Container(
                    alignment: .topEnd,
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.responsiveWidth(context, 24.0),
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.responsiveHeight(context, 52)),
                  //onBoardingTabBar
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.responsiveHeight(context, 500),
              child: PageView(
                controller: controller,
                allowImplicitScrolling: false,
                children: _buildTabs(),
              ),
            ),
            SizedBox(height: SizeConfig.responsiveHeight(context, 32)),
            Center(
              child: CustomPageIndicator(
                pageController: controller,
                isTeal: false,
              ),
            ),
            SizedBox(height: SizeConfig.responsiveHeight(context, 86)),
            CustomElevatedButton(
              onpress: () {
                final isLastPage =
                    controller.page?.round() == _buildTabs().length - 1;
                if (isLastPage) {
                  context.pushReplacementNamed('welcom-view');
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                }
              },
              title: 'Continue',
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTabs() => [
    OnboardingTabViewBody(
      title: 'Your convenience in aking a todo list',
      description:
          'Here\'s a mobile platform that helps you create task or to list so that it can help you in every job easier and faster.',
      imagePath: AppImages.onboardingOne,
    ),
    OnboardingTabViewBody(
      title: 'Find the practicality in making your todo list',
      description: 'Easy-to-understand user interface  that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',
      imagePath: AppImages.onboardingTow,
    ),
  ];
}
