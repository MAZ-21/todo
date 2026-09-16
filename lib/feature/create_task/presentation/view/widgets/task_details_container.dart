import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/creating_first_task.dart';

class TaskDetailsContainer extends StatelessWidget {
  const TaskDetailsContainer({super.key, });

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
            child: CreatingFirstTask(),
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
                SizedBox(width: 8,),
                Text(
                  "Priority task",
                  style: Styles.regular12(context).copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
