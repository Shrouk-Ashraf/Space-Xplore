import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:space_app/core/errors/faliure.dart';
import 'package:space_app/core/networking/api_service.dart';
import 'package:space_app/features/ships/data/ship_model/ship_model.dart';

class ShipsRepoImple {
  ApiService apiService;
  ShipsRepoImple(this.apiService);
  Future<Either<Faliure, List<ShipModel>>> getAllShips() async {
    try {
      var response = await apiService.getAllShips();
      response
          .map((shipData) => ShipModel.fromJson(shipData.toJson()))
          .toList();
      return Right(response);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
