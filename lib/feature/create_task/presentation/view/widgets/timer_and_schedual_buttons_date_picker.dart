import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/shared/custom_elevated_button.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';

class TimerAndSchedualButtonDatePicker extends StatelessWidget {
  const TimerAndSchedualButtonDatePicker({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            onpress: () {},
            title: '',
            btnColor: AppColor.primaryBackgroundColor,
            customContent: Row(
              mainAxisAlignment: .center,
              children: [
                SvgPicture.asset(AppIcons.plus),
                SizedBox(width: 6.5),
                Text(
                  'Add Time',
                  style: Styles.medium16(
                    context,
                  ).copyWith(color: AppColor.primaryDefaultColor),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 15.5),
        Expanded(
          child: CustomElevatedButton(
            onpress: () {
              Navigator.pop(context);
            },
            title: '',
            btnColor: AppColor.primaryDefaultColor,
            customContent: Row(
              mainAxisAlignment: .center,
              children: [
                SvgPicture.asset(AppIcons.timer),
                SizedBox(width: 6.5),
                Text(
                  'Add Time',
                  style: Styles.medium16(
                    context,
                  ).copyWith(color: AppColor.whiteColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
