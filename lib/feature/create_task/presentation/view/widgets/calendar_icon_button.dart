import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/show_bottom_sheet_date_picker.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class CalendarIconButton extends StatefulWidget {
  const CalendarIconButton({super.key});

  @override
  State<CalendarIconButton> createState() => _CalendarIconButtonState();
}

class _CalendarIconButtonState extends State<CalendarIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: null,
      icon: SvgPicture.asset(AppIcons.calendar),
      onPressed: () {
        showMaterialBottomSheetDatePicker(context);
      },
    );
  }

  void showMaterialBottomSheetDatePicker(BuildContext context) {
    final cubit = context.read<CreateTaskCubit>();
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (_) {
        return BlocProvider.value(
          value: cubit, 
          child: SizedBox(
            height: SizeConfig.responsiveHeight(context, 759),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 45),
              child: ShowBottomSheetDatePicker(),
            ),
          ),
        );
      },
    );
  }
}
