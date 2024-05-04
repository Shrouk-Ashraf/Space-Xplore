import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/rockets/logic/all_rockets_cubit/rockets_cubit.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';

import '../widgets/rocket_grid_view.dart';

class RocketsScreen extends StatefulWidget {
  const RocketsScreen({super.key});

  @override
  State<RocketsScreen> createState() => _RocketsScreenState();
}

class _RocketsScreenState extends State<RocketsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RocketsCubit>(context).getAllRockets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(
        title: 'SpaceX',
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: BlocBuilder<RocketsCubit, RocketsState>(
              builder: (context, state) {
                if (state is RocketsLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.blue,
                    ),
                  );
                } else if (state is RocketsSucces) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text('Rockets', style: TextStyles.font18WhiteMedium),
                      SizedBox(height: 20.h),
                      RocketGridView(
                        rockets: state.rocketModel,
                      ),
                    ],
                  );
                } else if (state is RocketsFailure) {
                  return Center(
                    child: Text(
                      state.errMessage,
                      style: TextStyles.font20WhiteBold,
                    ),
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
