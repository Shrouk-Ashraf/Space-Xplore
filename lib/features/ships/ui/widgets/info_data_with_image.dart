import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/features/ships/data/ship_model/ship_model.dart';
import 'package:space_app/features/ships/ui/widgets/titile_and_sub_title_info.dart';

class InfoDataWithImage extends StatelessWidget {
  const InfoDataWithImage({super.key, required this.shipModel});
  final ShipModel shipModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shipModel.shipName ?? 'name of ships error',
                style: TextStyles.font15WhiteBold,
              ),
              verticalSpace(10.h),
              TitileAndSubTitle(
                title: "Type:",
                subTitle: shipModel.shipType ?? '_',
              ),
              verticalSpace(10.h),
              TitileAndSubTitle(
                title: "Status:",
                subTitle: isActive(shipModel.active ?? true),
                textStyle: isActive(shipModel.active!) == "Inactive"
                    ? TextStyles.font15White500Weight
                        .copyWith(color: ColorsManager.red)
                    : TextStyles.font15White500Weight
                        .copyWith(color: Colors.green),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 90.w,
          height: 90.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: Image.network(
              shipModel.image ?? "https://i.imgur.com/woCxpkj.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  String isActive(bool state) {
    return state ? "Active" : "Inactive";
  }
}
