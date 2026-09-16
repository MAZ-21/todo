import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/create_task/data/repo/task_repo_impl.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/calendar_icon_button.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/description_form_field.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/inbox_icon_button.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/send_icon_button.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/task_form_field.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/time_icon_button.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class TaskBottomSheet extends StatelessWidget {
  const TaskBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTaskCubit(FirebaseTaskRepository()),
      child: Container(
        height: SizeConfig.responsiveHeight(context, 204),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: const [
            TaskFormField(),
            DescriptionFormField(),
            Row(
              children: [
                //inbox
                InboxIconButton(),
                SizedBox(width: 16),
                //calendar
                CalendarIconButton(),
                SizedBox(width: 16),
                //time
                TimeIconButton(),
                SizedBox(width: 16),
                //flag
                // FlagIconButton(),
                Spacer(),
                SendIconButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
