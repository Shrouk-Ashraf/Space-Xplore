import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class WikipediaLink extends StatelessWidget {
  const WikipediaLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Text(
        'Wikipedia',
        style: TextStyles.font16WhiteRegular.copyWith(
            color: ColorsManager.linkColor,
            decoration: TextDecoration.underline,
            decorationColor: ColorsManager.linkColor),
      ),
    );
  }
}