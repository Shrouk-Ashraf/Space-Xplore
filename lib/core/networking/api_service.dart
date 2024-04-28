import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:space_app/core/networking/api_constants.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.allLaunches)
  Future<List<LaunchResponse>> getAllLaunches();
}
