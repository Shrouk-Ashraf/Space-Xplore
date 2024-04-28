import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_app/core/widgets/background.dart';
import 'package:space_app/core/widgets/custom_error_widget.dart';
import 'package:space_app/core/widgets/custom_loading_widget.dart';
import 'package:space_app/features/ships/logic/ships/ships_cubit.dart';
import 'package:space_app/features/ships/ui/widgets/all_category_of_ships.dart';

class ShipsScreen extends StatelessWidget {
  ShipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: BlocBuilder<ShipsCubit, ShipsState>(
          builder: (context, state) {
            if (state is ShipsSuccess) {
              return AllCategoryOfShips(
                shipsModel: state.shipsData,
              );
            } else if (state is ShipsFaliure) {
              return CustomErrorWidget(errorMessage: state.errorMessage);
            } else {
              return const CutomLoadingWidget();
            }
          },
        ),
      ),
    );
  }
}
