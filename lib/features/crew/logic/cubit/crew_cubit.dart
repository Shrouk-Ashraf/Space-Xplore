import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_app/features/crew/data/repos/crew_repo.dart';
import 'package:space_app/features/crew/logic/cubit/crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  final CrewRepo _crewRepo;

  CrewCubit(this._crewRepo) : super(CrewInitialState());

  Future<void> getAllCrew() async {
    emit(CrewLoadingState());
    final result = await _crewRepo.getAllCrew();
    result.fold((failure) {
      emit(CrewFailureState(errorMessage: failure.errorMessage));
    }, (successData) {
      emit(CrewLoadedState(successData));
    });
  }
}
