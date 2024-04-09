// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:space_app/features/crew/data/crew_data.dart';
// import 'package:space_app/core/widgets/custom_grid_container.dart';

// class CrewGridView extends StatelessWidget {
//   const CrewGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GridView(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 100.w / 110.h,
//           crossAxisSpacing: 60.w,
//           mainAxisSpacing: 30.h,
//         ),
//         children: [
//           for (final member in crewList)
//             CustomGridContainer(
//               title: member.name,
//               imageUrl: member.imageUrl,
//             ),
//         ],
//       ),
//     );
//   }
// }
