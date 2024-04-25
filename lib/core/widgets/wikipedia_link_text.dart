import 'package:flutter/material.dart';
import 'package:space_app/core/widgets/web_view.dart';

import '../theming/styles.dart';

class WikipediaLinkText extends StatelessWidget {
  const WikipediaLinkText({
    super.key,
    required this.wikipediaUrl,
  });

  final String wikipediaUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WebView(webViewUrl: wikipediaUrl),
          ),
        );
      },
      child: Text(
        'Wikipedia',
        style: TextStyles.font11BlueMedium,
      ),
    );
  }
}
