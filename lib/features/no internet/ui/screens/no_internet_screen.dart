import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(title: 'Space Xplore'),
      body: BackgroundContainer(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/json/no_internet.json',
              fit: BoxFit.fill,
            ),
            Text(
              'Whoops!',
              style: TextStyles.font24WhiteBold,
            ),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Failed to connect to Space Xplore, please check your device\'s network connection.',
                style: TextStyles.font12WhiteBold,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(35),
            ElevatedButton.icon(
              label: const Text('Retry'),
              onPressed: () {
                Connectivity().checkConnectivity();
              },
              icon: const Icon(Icons.refresh),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.blue,
                foregroundColor: ColorsManager.white,
                minimumSize: Size(120.w, 50.h),
                textStyle: TextStyles.font12WhiteBold,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
