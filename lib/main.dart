import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/rockets/ui/screens/rocket_details_screen.dart';



void main() {
  runApp(const SpaceApp());
}


class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Space App',
        home: RocketDetailsScreen(),
      ),
    );
  }
}