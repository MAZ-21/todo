// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:todo/core/asset/app_icons.dart';
// import 'package:todo/core/asset/app_images.dart';
// import 'package:todo/core/styles/styles.dart';
// import 'package:todo/core/utils/size_config.dart';
// import 'package:todo/feature/create_task/data/model/task_model.dart';

// class TaskDetails extends StatelessWidget {
//   const TaskDetails({super.key, required this.taskModel,});
//   final List<TaskModel> taskModel;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Stack(
//         children: [
//           Container(
//             height: 148,
//             width: SizeConfig.responsiveWidth(context, 327),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             height: 36,
//             width: SizeConfig.responsiveWidth(context, 327),
//             decoration: BoxDecoration(
//               // color: cubit.selectedColor,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(8),
//                 topRight: Radius.circular(8),
//               ),
//             ),
//             child: Row(
//               children: [
//                 SvgPicture.asset(AppIcons.flagOutline),
//                 SizedBox(width: 8,),
//                 Text(
//                   "adding flag",
//                   style: Styles.regular12(context).copyWith(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
