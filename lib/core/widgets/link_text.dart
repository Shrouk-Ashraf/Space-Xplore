import 'package:flutter/material.dart';
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
          MaterialPageRoute(
            builder: (context) => WebView(webViewUrl: linkUrl),
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
