import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_app/features/launches/data/repos/launch_repo.dart';
import 'package:space_app/features/launches/logic/cubit/launch_state.dart';

class LaunchCubit extends Cubit<LaunchState> {
  final LaunchRepo _launchRepo;
  LaunchCubit(this._launchRepo) : super(const LaunchState.initial());

  void emitGetAllLaunchesStates() async {
    emit(const LaunchState.loading());
    final result = await _launchRepo.getAllLaunches();
    result.fold((failure) {
      emit(LaunchState.error(error: failure.errorMessage));
    }, (successData) {
      emit(LaunchState.success(successData));
    });
  }
}
