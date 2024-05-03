import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/di/dependency_injection.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';
import 'package:space_app/features/crew/ui/screens/crew_details_screen.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';

class CrewGridView extends StatefulWidget {
  const CrewGridView({super.key, required this.crewList});

  final List<CrewMemberModel> crewList;

  @override
  State<CrewGridView> createState() => _CrewGridViewState();
}

class _CrewGridViewState extends State<CrewGridView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedBuilder(
        animation: _animationController,
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: 50.w,
          ),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100.w / 120.h,
              crossAxisSpacing: 40.w,
              mainAxisSpacing: 35.h,
            ),
            children: [
              for (final member in widget.crewList)
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 300),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            FadeTransition(
                          opacity: animation,
                          child: BlocProvider(
                            create: (context) => getIt<LaunchCubit>(),
                            child: CrewDetailsScreen(
                              crewMember: member,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: CustomGridContainer(
                    title: member.name,
                    imageUrl: member.imageUrl,
                  ),
                ),
            ],
          ),
        ),
        builder: (context, child) => SlideTransition(
          position: Tween(
            begin: const Offset(0, 0.5),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              parent: _animationController,
              curve: Curves.easeInOut,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
