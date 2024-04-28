import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';

class CustomCard extends StatelessWidget {
  final LaunchResponse item;
  const CustomCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      decoration: BoxDecoration(
          color: ColorsManager.cardColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.black.withOpacity(0.25),
              blurRadius: 11.33.r,
              offset: const Offset(13, 11),
            ),
            BoxShadow(
              color: ColorsManager.black.withOpacity(0.15),
              blurRadius: 6.r,
              offset: const Offset(-10, -13),
            ),
          ],
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorsManager.black,
                ColorsManager.darkGrey,
                Colors.grey,
              ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  item.links.patch.small!,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          10.verticalSpace,
          Text(
            item.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.font16WhiteRegular,
          ),
        ],
      ),
    );
  }
}
