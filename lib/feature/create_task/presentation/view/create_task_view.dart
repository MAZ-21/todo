import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/create_task/data/repo/task_repo.dart';
import 'package:todo/feature/create_task/data/repo/task_repo_impl.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/create_task_view_body.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class CreateTaskView extends StatelessWidget {
  const CreateTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateTaskViewBody();
  }
}
