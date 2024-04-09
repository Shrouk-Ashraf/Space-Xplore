import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/app_bar.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/bacground.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/ships/data/testData.dart';

class ShipsView extends StatelessWidget {
  ShipsView({super.key});
  List<TestMyData> data = [
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
      body: BackgroundContainer(
        child: Column(
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
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 18,
                              crossAxisSpacing: 15,
                              childAspectRatio: .8),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return CustomGridContainer(
                          imageUrl: data[index].imageUrl,
                          title: data[index].title,
                        );
                      })),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
