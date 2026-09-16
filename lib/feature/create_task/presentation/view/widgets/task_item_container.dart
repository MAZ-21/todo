import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/create_task/data/model/task_model.dart';

class TaskItemContainer extends StatelessWidget {
  const TaskItemContainer({super.key, required this.task});

  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Container(
            height: 148,
            width: SizeConfig.responsiveWidth(context, 327),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.circle),
                    SizedBox(width: 12),
                    Text(task.title, style: Styles.medium16(context)),
                    SizedBox(width: 20),
                    Divider(),
                    SizedBox(width: 16),
                    Row(
                      spacing: 5,
                      children: [
                        SvgPicture.asset(
                          AppIcons.clock,
                          color: AppColor.errorDefaultColor,
                        ),
                        Text(
                          DateFormat(
                            'hh.mm a',
                          ).format(DateFormat('HH:mm').parse(task.dueTime)),
                          style: Styles.regular12(
                            context,
                          ).copyWith(color: AppColor.errorDefaultColor),
                        ),
                        Spacer(),
                        Text(
                          DateFormat('EEE, dd MMM yyyy').format(task.dueDate),
                          style: Styles.regular12(context).copyWith(color: AppColor.neutralSecondaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 36,
            width: SizeConfig.responsiveWidth(context, 327),
            decoration: BoxDecoration(
              color: AppColor.primaryDefaultColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.flagOutline),
                SizedBox(width: 8),
                Text(
                  "Priority task",
                  style: Styles.regular12(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                Spacer(),
                SvgPicture.asset(AppIcons.menuDotsHorizontal),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
