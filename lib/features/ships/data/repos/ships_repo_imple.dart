import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:space_app/core/errors/faliure.dart';
import 'package:space_app/core/networking/api_services.dart';
import 'package:space_app/features/ships/data/ship_model/ship_model.dart';

class ShipsRepoImple {
  ApiServices apiServices;
  ShipsRepoImple(this.apiServices);
  Future<Either<Faliure, List<ShipModel>>> getAllShips() async {
    try {
      var response = await apiServices.getAllShips();
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
