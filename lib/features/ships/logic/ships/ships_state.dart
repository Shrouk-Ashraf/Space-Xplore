part of 'ships_cubit.dart';

sealed class ShipsState {}

final class ShipsInitial extends ShipsState {}

final class ShipsSuccess extends ShipsState {
  final List<ShipModel> shipsData;

  ShipsSuccess({required this.shipsData});
}

final class ShipsLoading extends ShipsState {}

final class ShipsFaliure extends ShipsState {
  final String errorMessage;

  ShipsFaliure({required this.errorMessage});
}
