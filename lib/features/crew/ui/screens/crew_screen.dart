import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_loading_widget.dart';
import 'package:space_app/core/widgets/failed_request_column.dart';
import 'package:space_app/features/crew/logic/crew_cubit.dart';
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
    _fetchData();
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
                  return const CustomLoadingWidget();
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
                  return FailedRequestColumn(
                    fetchData: _fetchData,
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  void _fetchData() {
    BlocProvider.of<CrewCubit>(context).getAllCrew();
  }
}
