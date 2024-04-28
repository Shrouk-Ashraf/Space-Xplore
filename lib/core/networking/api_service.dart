import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:space_app/core/networking/api_constants.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';
import 'package:retrofit/http.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
part 'api_service.g.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.crew)
  Future<List<CrewMemberModel>> getAllCrew();

  @GET(ApiConstants.allLaunches)
  Future<List<LaunchResponse>> getAllLaunches();
}
