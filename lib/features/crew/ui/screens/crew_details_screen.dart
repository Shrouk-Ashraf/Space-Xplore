import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/constants.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/link_text.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';
import 'package:space_app/features/crew/ui/widgets/crew_circle_image.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';
import 'package:space_app/features/launches/logic/cubit/launch_state.dart';

class CrewDetailsScreen extends StatefulWidget {
  const CrewDetailsScreen({
    super.key,
    required this.crewMember,
  });

  final CrewMemberModel crewMember;

  @override
  State<CrewDetailsScreen> createState() => _CrewDetailsScreenState();
}

class _CrewDetailsScreenState extends State<CrewDetailsScreen> {
  late final launchModelID = widget.crewMember.launches[0];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<LaunchCubit>(context).getOneLaunch(id: launchModelID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Center(
            child: Container(
              height: 450.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorsManager.lightTransparent,
              ),
              child: BlocBuilder<LaunchCubit, LaunchState>(
                builder: (context, state) {
                  if (state is GetOneLaunchSuccess) {
                    return Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CrewCircleImage(
                              crewMemberImageUrl: widget.crewMember.imageUrl),
                          verticalSpace(10),
                          _buildTextInRow(widget.crewMember.name,
                              TextStyles.font19WhiteBold),
                          verticalSpace(10),
                          const Divider(color: ColorsManager.darkGrey),
                          Row(
                            children: [
                              _buildColumn(Constants.crewAgencyAttribute,
                                  widget.crewMember.agency),
                              horizontalSpace(20),
                              _buildColumn(Constants.crewStatusAttribute,
                                  widget.crewMember.status),
                              horizontalSpace(20),
                              _buildColumn(Constants.crewLaunchesAttribute,
                                  state.launchData.name),
                            ],
                          ),
                          verticalSpace(25),
                          LinkText(
                            linkUrl: widget.crewMember.wikipediaUrl,
                            linkName: Constants.wikipediaText,
                          )
                        ],
                      ),
                    );
                  } else if (state is GetOneLaunchLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.blue,
                      ),
                    );
                  } else {
                    return Center(
                      child: Text(
                        Constants.errorMessage,
                        style: TextStyles.font20WhiteBold,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn(String title, String content) {
    return Expanded(
      child: Column(
        children: [
          _buildTextInRow(title, TextStyles.font16WhiteBold),
          verticalSpace(10),
          _buildTextInRow(content, TextStyles.font12WhiteMedium),
        ],
      ),
    );
  }

  Text _buildTextInRow(String text, TextStyle textStyle) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
