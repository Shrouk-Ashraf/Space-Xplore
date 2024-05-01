import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/styles.dart';

class CustomCardWithImageInTop extends StatelessWidget {
  const CustomCardWithImageInTop(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imageUrl});

  final String title;
  final String subTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 60.h,
          child: Container(
            width: 140.w,
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: const Color(0xffFDFDFD).withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  blurRadius: 11.33,
                  offset: const Offset(13, 11),
                ),
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.15),
                  blurRadius: 6,
                  offset: const Offset(-10, -13),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyles.font18WhiteRegular,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  subTitle,
                  style: TextStyles.font12GreyRegular
                      .copyWith(overflow: TextOverflow.ellipsis),
                  maxLines: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
