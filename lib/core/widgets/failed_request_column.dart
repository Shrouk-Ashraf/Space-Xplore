import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';

class FailedRequestColumn extends StatelessWidget {
  const FailedRequestColumn({
    super.key,
    required this.fetchData,
  });

  final void Function() fetchData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Lottie.asset(
            'assets/json/failed_request.json',
            fit: BoxFit.fill,
          ),
        ),
        Text(
          'Whoops!',
          style: TextStyles.font24WhiteBold,
        ),
        verticalSpace(15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Failed to fetch data from the server since it\'s currently unable to handle requests, please try again later.',
            style: TextStyles.font12WhiteBold,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpace(35),
        ElevatedButton.icon(
          label: const Text('Retry'),
          onPressed: fetchData,
          icon: const Icon(Icons.refresh),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManager.blue,
            foregroundColor: ColorsManager.white,
            minimumSize: Size(120.w, 50.h),
            textStyle: TextStyles.font12WhiteBold,
          ),
        ),
      ],
    );
  }
}
