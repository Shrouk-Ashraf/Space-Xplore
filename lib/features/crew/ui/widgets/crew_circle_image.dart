import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CrewCircleImage extends StatelessWidget {
  const CrewCircleImage({
    super.key,
    required this.crewMemberImageUrl,
  });

  final String crewMemberImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 230.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            crewMemberImageUrl,
          ),
        ),
      ),
    );
  }
}
