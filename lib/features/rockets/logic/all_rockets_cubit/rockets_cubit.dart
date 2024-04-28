import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:space_app/features/rockets/data/repos/rockets_repo.dart';

import '../../data/models/rocket_model/rocket_model.dart';

part 'rockets_state.dart';

class RocketsCubit extends Cubit<RocketsState> {
  final RocketsRepo rocketsRepo;
  RocketsCubit(this.rocketsRepo) : super(RocketsInitial());
  Future<void> getAllRockets() {
    emit(RocketsLoading());
    var result = rocketsRepo.fetchAllRockets();
    
    return result;
    
  }
}
