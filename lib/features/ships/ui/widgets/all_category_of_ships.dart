import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/ships/data/ship_model/ship_model.dart';
import 'package:space_app/features/ships/ui/screens/ship_details_screen.dart';

class AllCategoryOfShips extends StatelessWidget {
  const AllCategoryOfShips({super.key, required this.shipsModel});
  final List<ShipModel> shipsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            left: 5.w,
            bottom: 18.w,
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
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              bottom: 50.w,
            ),
            child: Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 100.w / 120.h,
                    crossAxisSpacing: 40.w,
                    mainAxisSpacing: 35.h,
                  ),
                  itemCount: shipsModel.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ShipDetailsScreen(
                                singleShipModel: shipsModel[index],
                              );
                            },
                          ),
                        );
                      },
                      child: CustomGridContainer(
                        imageUrl: shipsModel[index].image ??
                            "https://i.imgur.com/woCxpkj.jpg",
                        title: shipsModel[index].shipName ??
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
