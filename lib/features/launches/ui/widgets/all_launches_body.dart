import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';
import 'package:space_app/features/launches/logic/cubit/launch_state.dart';
import 'package:space_app/features/launches/ui/widgets/launches_grid_view.dart';

class AllLaunchesBody extends StatelessWidget {
  const AllLaunchesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LaunchCubit, LaunchState>(
        builder: (context, state) {
          final cubit = LaunchCubit.get(context);
          List<LaunchResponse> allLaunches = cubit.allLaunches;
          return state is GetAllLaunchesLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainColor,
                  ),
                )
              : state is GetAllLaunchesFailure
                  ? Center(
                      child: Text(state.errorMessage),
                    )
                  : Column(
                      children: [
                        LaunchesGridView(
                          allLaunches: allLaunches,
                        ),
                        state is LoadingMoreLaunches
                            ? Center(
                                child: SpinKitThreeBounce(
                                  size: 30.sp,
                                  color: ColorsManager.mainColor,
                                ),
                              )
                            : state is NoMoreLaunches
                                ? const Center(
                                    child: Text(
                                      "No More Data",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                : const SizedBox.shrink()
                      ],
                    );
        },
      ),
    );
  }
}
