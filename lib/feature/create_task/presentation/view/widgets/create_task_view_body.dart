import 'package:flutter/material.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/create_task_list_tile_header.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/create_task_list_view.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/task_details_container.dart';

class CreateTaskViewBody extends StatelessWidget {
  const CreateTaskViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            CreateTaskListTileHeader(),
            SizedBox(height: 30),
            TaskListView(),
          ],
        ),
      ),
    );
  }
}
