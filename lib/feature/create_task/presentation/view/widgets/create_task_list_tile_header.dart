import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';
class CreateTaskListTileHeader extends StatelessWidget {
  const CreateTaskListTileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Today', 
        style: Styles.semiBold24(context),
      ),
      subtitle: Text(
        'Best platform for creating to-do lists',
        style: Styles.regular14(context).copyWith(color: AppColor.neutralSecondaryColor),
      ),
      trailing: SvgPicture.asset(AppIcons.setting),
    );
  }
}
