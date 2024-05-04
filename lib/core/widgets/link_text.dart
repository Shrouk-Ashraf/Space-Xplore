import 'package:flutter/material.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/widgets/web_view.dart';

import '../theming/styles.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    super.key,
    required this.linkUrl,
    required this.linkName,
  });

  final String linkUrl;
  final String linkName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) =>
                ScaleTransition(
              scale: Tween<double>(
                begin: 0.0, // Starting scale
                end: 1.0, // Ending scale
              ).animate(animation),
              child: WebView(
                webViewUrl: linkUrl,
                appBarColor: ColorsManager.white,
              ),
            ),
          ),
        );
      },
      child: Text(
        linkName,
        style: TextStyles.font11BlueMedium,
      ),
    );
  }
}
