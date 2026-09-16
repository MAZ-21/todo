import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/create_task/presentation/view/create_task_view.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function onTap;
  final int currentIndex;
  final bool isNavBarVisibile;
  final Widget? fabIcon;
  final List<Widget> screens;
  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    required this.screens,
    required this.isNavBarVisibile,
    this.fabIcon,
    super.key,
  });
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      floatingActionButton: fabIcon,
      screens: screens,
      items: _navBarsItems(),
      hideNavigationBarWhenKeyboardAppears: true,
      navBarHeight: SizeConfig.responsiveHeight(context, 54),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 600),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          duration: Duration(milliseconds: 600),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      isVisible: isNavBarVisibile,
      // confineToSafeArea: true,
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppIcons.home, height: 24),
        activeColorPrimary: AppColor.primaryDefaultColor,
        inactiveColorPrimary: AppColor.neutralSecondaryColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppIcons.directInbox, height: 24),
        activeColorPrimary: AppColor.primaryDefaultColor,
        inactiveColorPrimary: AppColor.neutralSecondaryColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppIcons.calendar, height: 24),
        activeColorPrimary: AppColor.primaryDefaultColor,
        inactiveColorPrimary: AppColor.neutralSecondaryColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppIcons.category, height: 24),
        activeColorPrimary: AppColor.primaryDefaultColor,
        inactiveColorPrimary: AppColor.neutralSecondaryColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppIcons.paperPlus, height: 24),
        activeColorPrimary: AppColor.primaryDefaultColor,
        inactiveColorPrimary: AppColor.neutralSecondaryColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
    ];
  }
}
