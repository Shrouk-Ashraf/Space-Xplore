import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:space_app/core/di/dependency_injection.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_loading_widget.dart';
import 'package:space_app/features/company%20info/ui/screens/company_info_screen.dart';
import 'package:space_app/features/crew/logic/crew_cubit.dart';
import 'package:space_app/features/crew/ui/screens/crew_screen.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';
import 'package:space_app/features/launches/ui/screens/launches_screen.dart';
import 'package:space_app/features/no%20internet/ui/screens/no_internet_screen.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:space_app/features/rockets/ui/screens/rockets_screen.dart';
import 'package:space_app/features/ships/logic/ships_cubit.dart';
import 'package:space_app/features/ships/ui/screens/ships_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  List<Widget> _buildScreens() {
    return [
      const RocketsScreen(),
      BlocProvider(
        create: (context) => getIt<LaunchCubit>(),
        child: const LaunchesScreen(),
      ),
      BlocProvider(
        create: (context) => getIt<CrewCubit>(),
        child: const CrewScreen(),
      ),
      BlocProvider(
        create: (context) => getIt<ShipsCubit>(),
        child: const ShipsScreen(),
      ),
      const CompanyInfoScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _buildNavBarsItems() {
    return [
      _buildNavBarItem(Icons.rocket_sharp, 'Rockets'),
      _buildNavBarItem(Icons.rocket_launch_sharp, 'Launches'),
      _buildNavBarItem(Icons.people_sharp, 'Crew'),
      _buildNavBarItem(Icons.directions_boat_filled_sharp, 'Ships'),
      _buildNavBarItem(Icons.info_outline, 'Company Info'),
    ];
  }

  PersistentBottomNavBarItem _buildNavBarItem(IconData icon, String label) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon),
      inactiveColorPrimary: ColorsManager.white,
      title: label,
      iconSize: 15.w,
      textStyle: TextStyles.font10WhiteBold,
    );
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller =
        PersistentTabController(initialIndex: 0);

    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final bool connected = connectivity != ConnectivityResult.none;
        if (connected) {
          return PersistentTabView(
            context,
            controller: controller,
            screens: _buildScreens(),
            items: _buildNavBarsItems(),
            backgroundColor: ColorsManager.black,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
            ),
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style1,
          );
        } else {
          return const NoInternetScreen();
        }
      },
      child: const CustomLoadingWidget(),
    );
  }
}
