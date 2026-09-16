import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class TaskFormField extends StatelessWidget {
  const TaskFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.read<CreateTaskCubit>().titleChanged(value),
      autofocus: false,
      cursorColor: AppColor.primaryDefaultColor,
      cursorWidth: 3,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'eg : Meeting with client',
        hintStyle: TextStyle(color: AppColor.neutralGhostColor, fontSize: 16),
      ),
    );
  }
}
