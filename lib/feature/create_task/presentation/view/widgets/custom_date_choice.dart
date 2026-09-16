import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';
import 'package:todo/feature/create_task/data/model/date_picker_varity_model.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class CustomDateChoice extends StatelessWidget {
  const CustomDateChoice({super.key, required this.items});

  final List<DatePickerVarityModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: GestureDetector(
            onTap: () {
              final selectedDate = DateTime.now().add(Duration(days: index));
              context.read<CreateTaskCubit>().dueDateChanged(selectedDate);
              log(selectedDate.toString());
              Navigator.pop(context);
            },
            child: Row(
              children: [
                SvgPicture.asset(items[index].icon),
                SizedBox(width: 12),
                Text(items[index].text, style: Styles.regular18(context)),
                Spacer(),
                Text(
                  items[index].date.toString(),
                  style: Styles.regular16(
                    context,
                  ).copyWith(color: AppColor.neutralSecondaryColor),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
