import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_app/core/networking/api_result.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
import 'package:space_app/features/launches/data/repos/launch_repo.dart';
import 'package:space_app/features/launches/logic/cubit/launch_state.dart';

class LaunchCubit extends Cubit<LaunchState> {
  final LaunchRepo _launchRepo;
  LaunchCubit(this._launchRepo) : super(const LaunchState.initial());

  void emitGetAllLaunchesStates() async {
    emit(const LaunchState.loading());
    final ApiResult<List<LaunchResponse>> response =
        await _launchRepo.getAllLaunches();

    debugPrint("response is $response");

    response.when(
      success: (allLaunches) {
        debugPrint("All launches response is ${allLaunches.length}");
        emit(LaunchState.success(allLaunches));
      },
      failure: (error) {
        emit(LaunchState.error(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
