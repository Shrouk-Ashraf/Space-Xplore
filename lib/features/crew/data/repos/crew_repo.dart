import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:space_app/core/networking/api_service.dart';
import 'package:space_app/core/networking/server_failure.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';

class CrewRepo {
  final ApiService apiService;

  CrewRepo(this.apiService);

  Future<Either<Failure, List<CrewMemberModel>>> getAllCrew() async {
    try {
      final crewMembersList = await apiService.getAllCrew();
      return Right(crewMembersList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
