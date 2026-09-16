import 'package:flutter/material.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/adding_task_hint_text.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/task_time_and_date.dart';

class CreatingFirstTask extends StatelessWidget {
  const CreatingFirstTask({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 36),
          AddingTaskHintText(),
          SizedBox(height: 20),
          Divider(),
          TaskTimeAndDate(),
        ],
      ),
    );
  }
}
