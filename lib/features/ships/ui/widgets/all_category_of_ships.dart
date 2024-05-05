import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:space_app/core/helpers/constants.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/ships/data/models/ship_model.dart';
import 'package:space_app/features/ships/ui/screens/ship_details_screen.dart';

class AllCategoryOfShips extends StatelessWidget {
  final List<ShipModel> ships;

  const AllCategoryOfShips({
    super.key,
    required this.ships,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            bottom: 18.h,
            left: 5.w,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              Constants.shipsModelName,
              style: TextStyles.font18WhiteMediumOrienta,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              bottom: 10.h,
            ),
            child: AnimationLimiter(
              child: GridView.builder(
                  itemCount: ships.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 100.w / 120.h,
                    crossAxisSpacing: 40.w,
                    mainAxisSpacing: 35.h,
                  ),
                  itemBuilder: (context, index) {
                    final ship = ships[index];
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      columnCount: ships.length,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        horizontalOffset: 50.0.h,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            onTap: () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                withNavBar: false,
                                pageTransitionAnimation:
                                    PageTransitionAnimation.sizeUp,
                                screen: ShipDetailsScreen(ship: ship),
                              );
                            },
                            child: CustomGridContainer(
                              title: ship.shipName ?? '_',
                              imageUrl: ship.image ?? '',
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
