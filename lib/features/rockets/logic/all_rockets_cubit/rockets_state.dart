part of 'rockets_cubit.dart';

@immutable
sealed class RocketsState {}

final class RocketsInitial extends RocketsState {}

final class RocketsLoading extends RocketsState {}

final class RocketsSucces extends RocketsState {
  final List<RocketModel> rocketModel;

  RocketsSucces({required this.rocketModel});
}

final class RocketsFailure extends RocketsState {
  final String errMessage;

  RocketsFailure({required this.errMessage});
}
