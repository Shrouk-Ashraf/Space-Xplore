import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/styles.dart';

class CustomCardWithImageInLeft extends StatelessWidget {
  const CustomCardWithImageInLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Container(
          width: 180.w,
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
                "DemoSat",
                style: TextStyles.font18WhiteRegular
                    .copyWith(overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Engine failure at 33 seconds and loss of vehicle",
                style: TextStyles.font12GreyRegular
                    .copyWith(overflow: TextOverflow.ellipsis),
                maxLines: 5,
              ),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 160,
          // bottom: 0,
          child: Image.network(
            "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png",
            height: 100,
            width: 100,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
