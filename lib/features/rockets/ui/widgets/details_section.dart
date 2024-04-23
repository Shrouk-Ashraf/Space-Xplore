import 'package:flutter/material.dart';
import 'package:space_app/core/theming/styles.dart';
import '../../../../core/widgets/wikipedia_widget.dart';
import '../../data/rocket_data.dart';
import 'details_section_text_widget.dart';
import 'package:flutter/material.dart';
import '../../data/rocket_data.dart';
class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rocketList[0].name!,
            style: TextStyles.font24WhiteBold,
          ),
          const SizedBox(
            height: 10,
          ),
          DetailsSectionTextWidget(
            title: "Description : ",
            subTitle: rocketList[0].description!,
          ),
          const SizedBox(
            height: 24,
          ),
          DetailsSectionTextWidget(
            title: "Height : ",
            subTitle: "${rocketList[0].height!.meters} m",
          ),
          const SizedBox(
            height: 9,
          ),
          DetailsSectionTextWidget(
            title: "Diameter : ",
            subTitle: "${rocketList[0].diameter!.meters} m",
          ),
          const SizedBox(
            height: 9,
          ),
          DetailsSectionTextWidget(
            title: "Mass : ",
            subTitle: "${rocketList[0].mass!.kg} Kg",
          ),
          const SizedBox(
            height: 40,
          ),
          DetailsSectionTextWidget(
            title: "Company : ",
            subTitle: "${rocketList[0].company}",
          ),
          const SizedBox(
            height: 9,
          ),
          DetailsSectionTextWidget(
            title: "Country : ",
            subTitle: "${rocketList[0].country}",
          ),
          const SizedBox(
            height: 9,
          ),
          const WikipediaLink(),
        ],
      ),
    );
  }
}

            style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Company : ${rocketList[0].company}",
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff3EB8FF),
                fontSize: 20,
                fontFamily: 'Orienta'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            rocketList[0].description!,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Wikipedia',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff3EB8FF),
                fontSize: 20,
                fontFamily: 'Orienta'),
          ),
        ],
      ),
    );
  }
}
