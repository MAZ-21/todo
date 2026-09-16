import 'package:go_router/go_router.dart';
import 'package:todo/feature/create_task/presentation/view/create_task_view.dart';
import 'package:todo/feature/home_page/presentation/view/home_page_view.dart';
import 'package:todo/feature/onboarding/view/onboarding_one.dart';
import 'package:todo/feature/welcom/view/welcom_view.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/onboarding-1',
    routes: [
      GoRoute(
        path: '/onboarding-1',
        name: 'onboarding1',
        builder: (context, state) => const OnboardingOneView(),
      ),
      GoRoute(
        path: '/welcom-view',
        name: 'welcom-view',
        builder: (context, state) => const WelcomView(),
      ),
      GoRoute(
        path: '/home-page',
        name: 'home-page',
        builder: (context, state) => const HomePageView(),
      ),
      // GoRoute(
      //   path: '/login',
      //   name: 'login',
      //   builder: (context, state) => const LoginScreen(),
      // ),
      // GoRoute(
      //   path: '/signin',
      //   name: 'signin',
      //   builder: (context, state) => const SigninScreen(),
      // ),
    ],
  );
}