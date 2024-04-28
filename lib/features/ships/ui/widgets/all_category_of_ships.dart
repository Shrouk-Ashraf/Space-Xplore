import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/app_bar.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/ships/data/ship_model/ship_model.dart';
import 'package:space_app/features/ships/ui/screens/ship_details_screen.dart';

class AllCategoryOfShips extends StatelessWidget {
  const AllCategoryOfShips({super.key, required this.shipsModel});
  final List<ShipModel>? shipsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        verticalSpace(20.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "All Ships",
              style: TextStyles.font18White500Weight,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Container(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 15,
                    childAspectRatio: .8,
                  ),
                  itemCount: shipsModel!.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ShipDetailsScreen(
                                singleShipModel: shipsModel![index],
                              );
                            },
                          ),
                        );
                      },
                      child: CustomGridContainer(
                        imageUrl: shipsModel![index].image ??
                            "https://i.imgur.com/woCxpkj.jpg",
                        title: shipsModel![index].shipName ??
                            "name of ships error ",
                      ),
                    );
                  })),
            ),
          ),
        ),
      ],
    );
  }
}
