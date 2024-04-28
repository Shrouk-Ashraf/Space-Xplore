import 'package:flutter/material.dart';
import 'package:space_app/core/routing/routes.dart';
import 'package:space_app/features/company%20info/ui/screens/company_info_screen.dart';
import 'package:space_app/features/crew/ui/screens/crew_screen.dart';
import 'package:space_app/features/launches/ui/screens/launches_screen.dart';
import 'package:space_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:space_app/features/rockets/ui/screens/rockets_screen.dart';
import 'package:space_app/features/ships/ui/screens/ships_screen.dart';

// TODO: to be edited
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.rocketsScreen:
        return MaterialPageRoute(
          builder: (_) => const RocketsScreen(),
        );
      case Routes.launchesScreen:
        return MaterialPageRoute(
          builder: (_) => const LaunchesScreen(),
        );
      case Routes.crewScreen:
        return MaterialPageRoute(
          builder: (_) => const CrewScreen(),
        );
      case Routes.shipsScreen:
        return MaterialPageRoute(
          builder: (_) => ShipsScreen(),
        );
      case Routes.companyInfoScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyInfoScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
