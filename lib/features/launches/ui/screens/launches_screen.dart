import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/routing/routes.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';
import 'package:space_app/features/launches/logic/cubit/launch_state.dart';
import 'package:space_app/features/launches/ui/widgets/custom_card.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({super.key});

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  void initState() {
    context.read<LaunchCubit>().emitGetAllLaunchesStates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(
        title: "SpaceX",
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 13, bottom: 13, start: 16, end: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Launches",
                    style: TextStyles.font18WhiteRegular,
                  ),
                  24.verticalSpace,
                  BlocBuilder<LaunchCubit, LaunchState>(
                    builder: (context, state) {
                      return state.mapOrNull(
                            loading: (value) {
                              debugPrint("loading");
                              return const CircularProgressIndicator();
                            },
                            success: (allLaunches) {
                              var items = allLaunches.data;
                              debugPrint("items response is ${items.length}");
                              debugPrint("success");
                              return GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  // childAspectRatio: 100.w / 100.h,
                                  crossAxisSpacing: 35.w,
                                  mainAxisSpacing: 15.h,
                                ),
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.launchesScreen);
                                    },
                                    child: CustomCard(
                                      item: items[index],
                                    ),
                                  );
                                },
                              );
                            },
                            error: (error) {
                              debugPrint("error");
                              return Center(
                                child: Text(error.error),
                              );
                            },
                          ) ??
                          const SizedBox();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
