import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/widgets/background.dart';
import 'package:space_app/features/crew/crew_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    // const RocketsScreen(),     // to be uncommented
    // const LaunchesScreen(),   // to be uncommented
    const CrewScreen(),
    // const ShipsScreen(),     // to be uncommented
  ];

  void _selectScreenIndex(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: _widgetOptions[_selectedScreenIndex],
      ),
      bottomNavigationBar: GNav(
        tabMargin: EdgeInsets.only(
          top: 10.h,
          left: 5.h,
          right: 5.h,
        ),
        tabs: [
          _buildNavigationBarItem(Icons.rocket_sharp, 'Rockets'),
          _buildNavigationBarItem(Icons.rocket_launch_sharp, 'Launches'),
          _buildNavigationBarItem(Icons.people_sharp, 'Crew'),
          _buildNavigationBarItem(Icons.directions_boat_filled_sharp, 'Ships'),
        ],
        backgroundColor: ColorsManager.black,
        activeColor: ColorsManager.white,
        color: ColorsManager.grey,
        gap: 5.w,
        iconSize: 18.sp,
        tabBackgroundColor: ColorsManager.darkGrey,
        selectedIndex: _selectedScreenIndex,
        onTabChange: _selectScreenIndex,
      ),
    );
  }

  GButton _buildNavigationBarItem(IconData icon, String label) {
    return GButton(
      icon: icon,
      text: label,
    );
  }
}
