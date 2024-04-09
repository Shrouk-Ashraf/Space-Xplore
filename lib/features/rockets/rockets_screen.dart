import 'package:flutter/material.dart';
import 'package:space_app/core/widgets/app_bar.dart';
import 'package:space_app/core/widgets/background.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Placeholder(),
        ),
      ),
    );
  }
}
