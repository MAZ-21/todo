import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/feature/create_task/presentation/view/create_task_view.dart';
import 'package:todo/feature/home_page/presentation/view/widget/custom_bottom_navigation_bar.dart';
import 'package:todo/feature/home_page/presentation/view/widget/custom_floating_action_button.dart';
import 'package:todo/feature/home_page/view_model/home_page_cubit.dart';
import 'package:todo/feature/home_page/view_model/home_page_state.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  static final List<Widget> screens = [
    CreateTaskView(),
    Center(child: Text('inbox')),
    Center(child: Text('calendar')),
    Center(child: Text('Widget')),
    Center(child: Text('paper')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            body: CustomBottomNavigationBar(
              currentIndex: state.currentIndex,
              isNavBarVisibile: state.isNavBarVisible,
              fabIcon: CustomFloatingActionButton(),
              screens: screens,
              onTap: (index) {
                context.read<HomePageCubit>().changeIndex(index);
              },
            ),
          );
        },
      ),
    );
  }
}
