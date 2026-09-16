import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';

class TaskTimeAndDate extends StatelessWidget {
  TaskTimeAndDate({super.key});
  final currentDate = DateFormat('EEE dd MMM yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Add your task',
          style: Styles.regular12(context).copyWith(color: AppColor.neutralSecondaryColor),
        ),
        Text(
          'Today $currentDate',
          style: Styles.regular12(context).copyWith(color: AppColor.neutralSecondaryColor),
        ),
      ],
    );
  }
}