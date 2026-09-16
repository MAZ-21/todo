import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/task_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: ((context) {
            return TaskBottomSheet();
          }),
        );
      },
      elevation: 0,
      backgroundColor: AppColor.primaryDefaultColor,
      shape: const CircleBorder(),
      child: SvgPicture.asset(AppIcons.add),
    );
  }
}
