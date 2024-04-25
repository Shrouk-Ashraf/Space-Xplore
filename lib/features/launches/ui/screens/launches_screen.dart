import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/features/launches/ui/widgets/custom_card.dart';

const List<Map<String, String>> items = [
  {
    "image": "https://images2.imgbox.com/a9/9a/NXVkTZCE_o.png",
    "name": "DemoSat",
  },
  {
    "image": "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png",
    "name": "FalconSat",
  },
  {
    "image": "https://images2.imgbox.com/ab/5a/Pequxd5d_o.png",
    "name": "RazakSat",
  },
  {
    "image": "https://images2.imgbox.com/a9/9a/NXVkTZCE_o.png",
    "name": "DemoSat",
  },
  {
    "image": "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png",
    "name": "FalconSat",
  },
  {
    "image": "https://images2.imgbox.com/ab/5a/Pequxd5d_o.png",
    "name": "RazakSat",
  }
];

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(
        title: "SpaceX",
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 13, bottom: 13, start: 16, end: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Launches",
                    style: TextStyles.font18WhiteRegular,
                  ),
                  24.verticalSpace,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 100.w / 100.h,
                      crossAxisSpacing: 35.w,
                      mainAxisSpacing: 15.h,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        item: items[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
