import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/styles.dart';

class AddingTaskHintText extends StatelessWidget {
  const AddingTaskHintText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.plus),
        SizedBox(width: 12),
        Text('Tap plus to create a new task', style: Styles.medium16(context)),
      ],
    );
  }
}
