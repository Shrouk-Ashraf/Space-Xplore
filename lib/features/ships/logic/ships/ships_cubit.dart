import 'package:bloc/bloc.dart';
import 'package:space_app/features/ships/data/repos/ships_repo_imple.dart';
import 'package:space_app/features/ships/data/ship_model/ship_model.dart';

part 'ships_state.dart';

class ShipsCubit extends Cubit<ShipsState> {
  ShipsCubit(this.shipsRepoImple) : super(ShipsInitial());
  ShipsRepoImple shipsRepoImple;
  Future<void> getAllShipsData() async {
    emit(ShipsLoading());
    var result = await shipsRepoImple.getAllShips();
    result.fold((faliure) {
      emit(ShipsFaliure(errorMessage: faliure.errorMessage));
    }, (successData) {
      emit(ShipsSuccess(shipsData: successData));
    });
  }
}
