import 'package:flutter/material.dart';
import 'package:space_app/core/widgets/app_bar.dart';
import 'package:space_app/core/widgets/background.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(title: 'SpaceX'),
      body: BackgroundContainer(
        child: SafeArea(
          child: Placeholder(),
        ),
      ),
    );
  }
}
