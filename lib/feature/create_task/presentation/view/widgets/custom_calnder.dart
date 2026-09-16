import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_cubit.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: const ColorScheme.light(
          primary: Colors.teal, // Header background & buttons
          onPrimary: Colors.white, // Header text color
          onSurface: Colors.black, // Dial text color
        ),
        timePickerTheme: TimePickerThemeData(
          hourMinuteShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          dayPeriodShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: Colors.white,
          hourMinuteTextColor: Colors.white,
          hourMinuteColor: Colors.teal,
          dialHandColor: Colors.teal,
          dialBackgroundColor: const Color(0xFFF3E5F5),
          entryModeIconColor: Colors.teal,
          helpTextStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          dayPeriodTextColor: const Color(0xFFF3E5F5),
          dayPeriodColor: Colors.teal,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
      child: CalendarDatePicker(
        firstDate: DateTime.now(),
        initialDate: DateTime.now(),
        lastDate: DateTime(2100),
        onDateChanged: (DateTime newDate) {
          context.read<CreateTaskCubit>().dueDateChanged(newDate);
          Navigator.pop(context);
        },
      ),
    );
  }
}
