import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/feature/create_task/data/model/date_picker_varity_model.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/custom_calnder.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/custom_date_choice.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/timer_and_schedual_buttons_date_picker.dart';

class ShowBottomSheetDatePicker extends StatelessWidget {
  const ShowBottomSheetDatePicker({super.key, this.datePickerVarityModel});
  final DatePickerVarityModel? datePickerVarityModel;
  static final List<DatePickerVarityModel> items = [
  DatePickerVarityModel(
    icon: AppIcons.sun,
    text: 'Today',
    date: DateTime.now(),
  ),
  DatePickerVarityModel(
    icon: AppIcons.cloudNotification,
    text: 'Tomorrow',
    date: DateTime.now().add(const Duration(days: 1)),
  ),
  DatePickerVarityModel(
    icon: AppIcons.car,
    text: 'This Weekend',
    date: DateTime.now(),
  ),
  DatePickerVarityModel(
    icon: AppIcons.reserve,
    text: 'Next Week',
    date: DateTime.now().add(const Duration(days: 7)),
  ),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDateChoice(items: items),
        CustomCalendar(),
        Spacer(),
        TimerAndSchedualButtonDatePicker(),
      ],
    );
  }
}
