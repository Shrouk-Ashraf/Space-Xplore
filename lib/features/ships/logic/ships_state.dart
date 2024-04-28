part of 'ships_cubit.dart';

sealed class ShipsState {}

final class ShipsInitial extends ShipsState {}

final class ShipsSuccess extends ShipsState {
  final List<ShipModel> shipsData;

  ShipsSuccess({required this.shipsData});
}

final class ShipsLoading extends ShipsState {}

final class ShipsFailure extends ShipsState {
  final String errorMessage;

  ShipsFailure({required this.errorMessage});
}
