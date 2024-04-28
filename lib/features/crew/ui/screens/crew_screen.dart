import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/features/crew/logic/cubit/crew_cubit.dart';
import 'package:space_app/features/crew/ui/widgets/crew_grid_view.dart';

class CrewScreen extends StatefulWidget {
  const CrewScreen({super.key});

  @override
  State<CrewScreen> createState() => _CrewScreenState();
}

class _CrewScreenState extends State<CrewScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CrewCubit>(context).getAllCrew();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(title: 'SpaceX'),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: BlocBuilder<CrewCubit, CrewState>(
              builder: (context, state) {
                if (state is CrewLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.blue,
                    ),
                  );
                } else if (state is CrewLoadedState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(10),
                      Text('Crew', style: TextStyles.font18WhiteMedium),
                      verticalSpace(20),
                      CrewGridView(
                        crewList: state.crewMembers,
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: Text(
                      'Oops there was an error, try again.',
                      style: TextStyles.font20WhiteBold,
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
