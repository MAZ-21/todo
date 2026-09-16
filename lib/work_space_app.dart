import 'package:flutter/material.dart';
import 'package:todo/core/routers/app_router.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/home_page/presentation/view/home_page_view.dart';

class WorkSpaceApp extends StatelessWidget {
  const WorkSpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.whiteColor,
        fontFamily: 'SF Pro Display',
      ),
      title: 'Workspace',
      home: HomePageView(),
    );
  }
}