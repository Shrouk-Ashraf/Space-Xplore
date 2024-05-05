import 'package:bloc/bloc.dart';
import 'package:space_app/features/ships/data/repos/ships_repo.dart';
import 'package:space_app/features/ships/logic/ships_state.dart';

class ShipsCubit extends Cubit<ShipsState> {
  ShipsRepo shipsRepo;

  ShipsCubit(this.shipsRepo) : super(ShipsInitial());

  Future<void> getAllShipsData() async {
    emit(ShipsLoading());
    var result = await shipsRepo.getAllShips();
    result.fold((failure) {
      emit(ShipsFailure(errorMessage: failure.errorMessage));
    }, (successData) {
      emit(ShipsSuccess(shipsData: successData));
    });
  }
}
