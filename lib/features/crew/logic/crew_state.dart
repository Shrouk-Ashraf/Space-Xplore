part of 'crew_cubit.dart';

abstract class CrewState {}

class CrewInitialState extends CrewState {}

class CrewLoadingState extends CrewState {}

class CrewLoadedState extends CrewState {
  final List<CrewMemberModel> crewMembers;

  CrewLoadedState(this.crewMembers);
}

class CrewFailureState extends CrewState {
  final String errorMessage;

  CrewFailureState({required this.errorMessage});
}
