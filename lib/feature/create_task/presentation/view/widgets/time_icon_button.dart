import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class TimeIconButton extends StatefulWidget {
  const TimeIconButton({super.key});

  @override
  State<TimeIconButton> createState() => _TimeIconButtonState();
}

class _TimeIconButtonState extends State<TimeIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: null,
      onPressed: () async {
        await timePicker(context);
        log('time done');
      },
      icon: SvgPicture.asset(AppIcons.clock),
    );
  }

  Future<void> timePicker(BuildContext context) async {
    //catch the picked time that the user tap on
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary:
                  AppColor.primaryDefaultColor, // Header background & buttons
              onPrimary: AppColor.whiteColor, // Header text color
              onSurface: AppColor.blackColor, // Dial text color
            ),
            timePickerTheme: TimePickerThemeData(
              hourMinuteShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              dayPeriodShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: AppColor.whiteColor,
              hourMinuteTextColor: AppColor.whiteColor,
              hourMinuteColor: AppColor.primaryDefaultColor,
              dialHandColor: AppColor.primaryDefaultColor,
              dialBackgroundColor: const Color(0xFFF3E5F5),
              entryModeIconColor: AppColor.primaryDefaultColor,
              helpTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dayPeriodTextColor: const Color(0xFFF3E5F5),
              dayPeriodColor: AppColor.primaryDefaultColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedTime != null && context.mounted) {
      context.read<CreateTaskCubit>().timeChanged(pickedTime.toString());
    }
  }
}
