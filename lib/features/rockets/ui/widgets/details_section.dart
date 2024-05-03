import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/wikipedia_link_text.dart';
import 'package:space_app/features/rockets/data/models/rocket_model/rocket_model.dart';
import 'details_section_text_widget.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.rocket,
  });

  final RocketModel rocket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              rocket.name,
              style: TextStyles.font24WhiteBold,
            ),
          ),
          verticalSpace(10),
          DetailsSectionTextWidget(
            title: "Description : ",
            subTitle: rocket.description,
          ),
          verticalSpace(24),
          DetailsSectionTextWidget(
            title: "Height : ",
            subTitle: "${rocket.height.meters} m",
          ),
          verticalSpace(9),
          DetailsSectionTextWidget(
            title: "Diameter : ",
            subTitle: "${rocket.diameter.meters} m",
          ),
          verticalSpace(9),
          DetailsSectionTextWidget(
            title: "Mass : ",
            subTitle: "${rocket.mass.kg} Kg",
          ),
          verticalSpace(24),
          DetailsSectionTextWidget(
            title: "Company : ",
            subTitle: rocket.company,
          ),
          verticalSpace(9),
          DetailsSectionTextWidget(
            title: "Country : ",
            subTitle: rocket.country,
          ),
          verticalSpace(10),
          WikipediaLinkText(
            wikipediaUrl: rocket.wikipedia,
          ),
        ],
      ),
    );
  }
}
