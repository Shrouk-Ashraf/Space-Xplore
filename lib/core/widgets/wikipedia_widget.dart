import 'package:flutter/material.dart';

import '../theming/styles.dart';

class WikipediaLink extends StatelessWidget {
  const WikipediaLink({
    super.key,
    required this.wikipediaUrl,
  });

  final String wikipediaUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Wikipedia',
        style: TextStyles.font11BlueMedium,
      ),
    );
  }
}
