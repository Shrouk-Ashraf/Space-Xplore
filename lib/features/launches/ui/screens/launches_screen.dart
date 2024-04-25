import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';


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
                  SizedBox(
                    height: 24.h,
                  ),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 100.w / 100.h,
                        crossAxisSpacing: 35.w,
                        mainAxisSpacing: 15.h,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return  CustomCard(item:items[index]);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {

  final Map<String,String> item;
  const CustomCard({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.only(top:25,left: 25,right: 25),
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
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [

            ColorsManager.black,

            ColorsManager.darkGrey,
            Colors.grey,
          ]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  item['image']!,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            item['name']!,
            style: TextStyles.font18WhiteRegular,
          ),
        ],
      ),
    );
  }
}

