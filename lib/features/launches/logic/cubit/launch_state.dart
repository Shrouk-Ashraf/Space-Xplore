import 'package:space_app/features/launches/data/models/launch_response.dart';

sealed class LaunchState {}

final class LaunchInitial extends LaunchState {}

final class GetAllLaunchesSuccess extends LaunchState {
  final List<LaunchResponse> launchesData;

  GetAllLaunchesSuccess({required this.launchesData});
}

final class GetAllLaunchesLoading extends LaunchState {}

final class GetAllLaunchesFailure extends LaunchState {
  final String errorMessage;

  GetAllLaunchesFailure({required this.errorMessage});
}

final class LoadingMoreLaunches extends LaunchState {}

final class NoMoreLaunches extends LaunchState {}
