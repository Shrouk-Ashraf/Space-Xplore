import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/core/app_bar.dart';
import 'package:space_app/core/widgets/bacground.dart';

class ShipsView extends StatelessWidget {
  const ShipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
