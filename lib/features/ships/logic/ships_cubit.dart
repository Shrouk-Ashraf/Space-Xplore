import 'package:bloc/bloc.dart';
import 'package:space_app/features/ships/data/repos/ships_repo.dart';
import 'package:space_app/features/ships/data/models/ship_model.dart';

part 'ships_state.dart';

class ShipsCubit extends Cubit<ShipsState> {
  ShipsCubit(this.shipsRepoImple) : super(ShipsInitial());
  ShipsRepo shipsRepoImple;

  Future<void> getAllShipsData() async {
    emit(ShipsLoading());
    var result = await shipsRepoImple.getAllShips();
    result.fold((failure) {
      emit(ShipsFailure(errorMessage: failure.errorMessage));
    }, (successData) {
      emit(ShipsSuccess(shipsData: successData));
    });
  }
}
