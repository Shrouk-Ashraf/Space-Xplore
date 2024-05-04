import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/custom_loading_widget.dart';
import 'package:space_app/core/widgets/failed_request_column.dart';
import 'package:space_app/features/ships/logic/ships_cubit.dart';
import 'package:space_app/features/ships/ui/widgets/all_category_of_ships.dart';

class ShipsScreen extends StatefulWidget {
  const ShipsScreen({super.key});

  @override
  State<ShipsScreen> createState() => _ShipsScreenState();
}

class _ShipsScreenState extends State<ShipsScreen> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    BlocProvider.of<ShipsCubit>(context).getAllShipsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(title: 'SpaceX'),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: BlocBuilder<ShipsCubit, ShipsState>(
              builder: (context, state) {
                if (state is ShipsSuccess) {
                  return AllCategoryOfShips(
                    shipsModel: state.shipsData,
                  );
                } else if (state is ShipsFailure) {
                  return FailedRequestColumn(
                    fetchData: _fetchData,
                  );
                } else {
                  return const CustomLoadingWidget();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
