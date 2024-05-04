import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/features/company%20info/logic/cubit/company_info_cubit.dart';
import 'package:space_app/features/company%20info/logic/cubit/company_info_state.dart';
import 'package:space_app/features/company%20info/ui/widgets/logos_link_circle.dart';
import 'package:space_app/features/company%20info/ui/widgets/title_and_description_%20column.dart';

class CompanyInfoScreen extends StatefulWidget {
  const CompanyInfoScreen({super.key});

  @override
  State<CompanyInfoScreen> createState() => _CompanyInfoScreenState();
}

class _CompanyInfoScreenState extends State<CompanyInfoScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CompanyInfoCubit>().getCompanyInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
            builder: (context, state) {
              return Center(
                child: Container(
                  width: 300.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorsManager.lightTransparent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: state is CompanyInfoStateSuccess
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24.r),
                                    child: Container(
                                      width: 100.w,
                                      height: 100.h,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/icons/logo.jpeg"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(8),
                                  Text(
                                    state.companyInfo.name,
                                    style:
                                        TextStyles.font25WhiteExtraBoldOrbitron,
                                  ),
                                ],
                              ),
                              verticalSpace(16),
                              TitleAndDescriptionColumn(
                                  title: "Headquarters",
                                  description:
                                      "${state.companyInfo.headquarters.address},${state.companyInfo.headquarters.city},${state.companyInfo.headquarters.state}"),
                              verticalSpace(16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TitleAndDescriptionColumn(
                                          title: "Founder",
                                          description:
                                              state.companyInfo.founder),
                                      verticalSpace(16),
                                      TitleAndDescriptionColumn(
                                          title: "Vehicles",
                                          description: state
                                              .companyInfo.vehicles
                                              .toString()),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TitleAndDescriptionColumn(
                                          title: "Founded",
                                          description: state.companyInfo.founded
                                              .toString()),
                                      verticalSpace(16),
                                      TitleAndDescriptionColumn(
                                          title: "Launch Sites",
                                          description: state
                                              .companyInfo.launchSites
                                              .toString()),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TitleAndDescriptionColumn(
                                          title: "CEO",
                                          description: state.companyInfo.ceo),
                                      verticalSpace(16),
                                      TitleAndDescriptionColumn(
                                          title: "Test Sites",
                                          description: state
                                              .companyInfo.testSites
                                              .toString()),
                                    ],
                                  ),
                                ],
                              ),
                              verticalSpace(16),
                              TitleAndDescriptionColumn(
                                title: "Employees",
                                description:
                                    state.companyInfo.employees.toString(),
                              ),
                              verticalSpace(16),
                              TitleAndDescriptionColumn(
                                title: "About us",
                                description: state.companyInfo.summary,
                              ),
                              verticalSpace(16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LogosLinkCircle(
                                    link: state.companyInfo.links.website,
                                    logo: "assets/icons/spacex.jpg",
                                  ),
                                  LogosLinkCircle(
                                    link: state.companyInfo.links.twitter,
                                    logo: "assets/icons/twitter.png",
                                  ),
                                  LogosLinkCircle(
                                    link: state.companyInfo.links.flickr,
                                    logo: "assets/icons/flickr.png",
                                  ),
                                ],
                              )
                            ],
                          )
                        : state is CompanyInfoStateFailure
                            ? Center(
                                child: Text(
                                  state.errorMessage,
                                  style: TextStyles.font20WhiteBold,
                                ),
                              )
                            : const Center(
                                child: CircularProgressIndicator(
                                  color: ColorsManager.mainColor,
                                ),
                              ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
