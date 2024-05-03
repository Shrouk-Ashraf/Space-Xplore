import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
import 'package:space_app/features/launches/ui/screens/launch_details_screen.dart';
import 'package:space_app/features/launches/ui/widgets/custom_card.dart';

class LaunchesGridView extends StatelessWidget {
  const LaunchesGridView({
    super.key,
    required ScrollController scrollController,
    required this.allLaunches,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final List<LaunchResponse> allLaunches;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 35.w,
          mainAxisSpacing: 15.h,
        ),
        itemCount: allLaunches.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LaunchDetailsScreen(
                      item: allLaunches[index],
                    );
                  },
                ),
              );
            },
            child: CustomCard(
              item: allLaunches[index],
            ),
          );
        },
      ),
    );
  }
}
