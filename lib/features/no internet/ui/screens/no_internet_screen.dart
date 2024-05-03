import 'package:flutter/material.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/features/no%20internet/ui/widgets/no_internet_column.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(title: 'Space Xplore'),
      body: BackgroundContainer(
        child: SafeArea(
          child: NoInternetColumn(),
        ),
      ),
    );
  }
}
