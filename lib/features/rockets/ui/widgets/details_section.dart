import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/styles.dart';
import '../../data/rocket_data.dart';
import 'details_section_text_widget.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rocketList[0].name!,
            style: TextStyles.font24WhiteBold,
          ),
          verticalSpace(10.h),
          DetailsSectionTextWidget(
            title: "Description : ",
            subTitle: rocketList[0].description!,
          ),
          verticalSpace(24.h),
          DetailsSectionTextWidget(
            title: "Height : ",
            subTitle: "${rocketList[0].height!.meters} m",
          ),
          verticalSpace(9.h),
          DetailsSectionTextWidget(
            title: "Diameter : ",
            subTitle: "${rocketList[0].diameter!.meters} m",
          ),
          verticalSpace(9.h),
          DetailsSectionTextWidget(
            title: "Mass : ",
            subTitle: "${rocketList[0].mass!.kg} Kg",
          ),
          verticalSpace(40.h),
          DetailsSectionTextWidget(
            title: "Company : ",
            subTitle: "${rocketList[0].company}",
          ),
          verticalSpace(9.h),
          DetailsSectionTextWidget(
            title: "Country : ",
            subTitle: "${rocketList[0].country}",
          ),
          verticalSpace(9.h),
          // const WikipediaLink(),
        ],
      ),
    );
  }
}
