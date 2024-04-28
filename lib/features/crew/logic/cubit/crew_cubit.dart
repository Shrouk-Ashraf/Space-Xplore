import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_app/features/crew/data/repos/crew_repo.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';

part 'crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  final CrewRepo _crewRepo;

  CrewCubit(this._crewRepo) : super(CrewInitialState());

  Future<void> getAllCrew() async {
    try {
      emit(CrewLoadingState());
      final crewMembers = await _crewRepo.getAllCrew();
      emit(CrewLoadedState(crewMembers));
    } catch (e) {
      emit(CrewFailureState(errorMessage: 'Failed to fetch crew members: $e'));
    }
  }
}
