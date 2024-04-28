import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/ships/ui/screens/ship_details_screen.dart';
import 'package:space_app/features/ships/data/testData.dart';

class ShipsScreen extends StatelessWidget {
  ShipsScreen({super.key});
  List<TestMyData> dataOfShips = [
    TestMyData(
        imageUrl: "https://i.imgur.com/woCxpkj.jpg",
        title: "American Champion"),
    TestMyData(
        imageUrl: "https://i.imgur.com/jmj8Sh2.jpg",
        title: "American Islander"),
    TestMyData(
        imageUrl: "https://i.imgur.com/ngYgFnn.jpg", title: "American Spirit"),
    TestMyData(
        imageUrl: "https://i.imgur.com/1s5DUbJ.jpg",
        title: "A Shortfall of Gravitas"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(
        title: "SpaceX",
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: Column(
            children: [
              verticalSpace(10.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "All Ships",
                    style: TextStyles.font18WhiteMedium,
                  ),
                ),
              ),
              verticalSpace(20.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.w,
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 100.w / 120.h,
                      crossAxisSpacing: 40.w,
                      mainAxisSpacing: 35.h,
                    ),
                    itemCount: dataOfShips.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ShipDetailsScreen();
                              },
                            ),
                          );
                        },
                        child: CustomGridContainer(
                          imageUrl: dataOfShips[index].imageUrl,
                          title: dataOfShips[index].title,
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
