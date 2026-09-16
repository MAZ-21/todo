import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class DescriptionFormField extends StatelessWidget {
  const DescriptionFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        context.read<CreateTaskCubit>().descriptionChanged(value);
        log('description date');
      },
      autofocus: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Description',
        hintStyle: TextStyle(color: AppColor.neutralSecondaryColor, fontSize: 16),
      ),
    );
  }
}