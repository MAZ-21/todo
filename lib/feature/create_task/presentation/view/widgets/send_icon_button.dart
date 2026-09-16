import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class SendIconButton extends StatelessWidget {
  const SendIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CreateTaskCubit>().submit();
        log('the task submitted');
      } ,
      icon: SvgPicture.asset(AppIcons.send),
    );
  }
}