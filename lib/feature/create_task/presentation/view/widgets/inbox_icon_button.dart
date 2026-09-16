import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';

class InboxIconButton extends StatelessWidget {
  const InboxIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      onPressed: () {},
      icon: SvgPicture.asset(AppIcons.directInbox),
    );
  }
}
