import 'package:flutter/material.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/wikipedia_link_text.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LaunchDetailsScreen extends StatelessWidget {
  final LaunchResponse item;
  const LaunchDetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: item.name,
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 13, bottom: 13, start: 16, end: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: item.links.youtubeId!,
                      flags: const YoutubePlayerFlags(
                        autoPlay: false,
                      ),
                    ),
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: ColorsManager.mainColor,
                    progressColors: const ProgressBarColors(
                      playedColor: ColorsManager.mainColor,
                      handleColor: ColorsManager.mainColor,
                    ),
                  ),
                  verticalSpace(20),
                  CustomTextSpan(
                    textTitle: "Details: ",
                    textDescription: item.details,
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextSpan(
                          textTitle: "Date: ",
                          textDescription: DateFormat("yyyy-MM-dd")
                              .format(DateTime.parse(item.date))
                              .toString()),
                      CustomTextSpan(
                          textTitle: "Flight Number: ",
                          textDescription: item.flightNumber.toString()),
                    ],
                  ),
                  verticalSpace(20),
                  CustomTextSpan(
                    textTitle: "Success: ",
                    textDescription: item.success == null
                        ? "_"
                        : item.success!
                            ? "True"
                            : "False",
                  ),
                  verticalSpace(20),
                  if (item.failures.isNotEmpty)
                    CustomTextSpan(
                      textTitle: "Failures: ",
                      textDescription: item.failures[0].reason,
                    ),
                  // verticalSpace(20),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: WikipediaLinkText(
                  //     wikipediaUrl: item.links.article!,
                  //   ),
                  // ),
                  verticalSpace(20),
                  GestureDetector(
                    onTap: () {},
                    child: WikipediaLinkText(
                      wikipediaUrl: item.links.wikipedia!,
                    ),
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

class CustomTextSpan extends StatelessWidget {
  final String textTitle;
  final String? textDescription;
  const CustomTextSpan({
    super.key,
    required this.textTitle,
    required this.textDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: textTitle,
            style: TextStyles.font16LightBlueRegular,
          ),
          TextSpan(
            text: textDescription,
            style: TextStyles.font13WhiteRegular,
          ),
        ],
      ),
    );
  }
}
