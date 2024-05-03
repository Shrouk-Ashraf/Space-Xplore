import 'package:flutter/material.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/custom_text_span.dart';
import 'package:space_app/core/widgets/link_text.dart';
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
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 13, bottom: 13, start: 16, end: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.links.youtubeId != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: YoutubePlayer(
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
                    ),
                  verticalSpace(30),
                  Center(
                    child: Text(
                      item.name,
                      style: TextStyles.font24WhiteBold,
                    ),
                  ),
                  verticalSpace(25),
                  CustomTextSpan(
                    textTitle: "Details: ",
                    textDescription: item.details ?? "-",
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
                        ? "-"
                        : item.success!
                            ? "True"
                            : "False",
                  ),
                  verticalSpace(20),
                  if (item.failures.isNotEmpty)
                    CustomTextSpan(
                      textTitle: "Failures: ",
                      textDescription: item.failures[0].reason ?? "-",
                    ),
                  verticalSpace(20),
                  GestureDetector(
                    onTap: () {},
                    child: LinkText(
                      linkUrl: item.links.article!,
                      linkName: 'Article',
                    ),
                  ),
                  verticalSpace(20),
                  GestureDetector(
                    onTap: () {},
                    child: LinkText(
                      linkUrl: item.links.wikipedia!,
                      linkName: 'Wikipedia',
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
