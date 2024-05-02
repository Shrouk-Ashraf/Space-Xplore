import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:space_app/core/di/dependency_injection.dart';
import 'package:space_app/core/routing/app_router.dart';
import 'package:space_app/core/routing/routes.dart';

int? isViewd;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  isViewd = preferences.getInt("onboardingKey");
  runApp(SpaceApp(
    appRouter: AppRouter(),
  ));
}

class SpaceApp extends StatelessWidget {
  final AppRouter appRouter;
  const SpaceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:
            isViewd != 0 ? Routes.onBoardingScreen : Routes.bottomNavBar,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
