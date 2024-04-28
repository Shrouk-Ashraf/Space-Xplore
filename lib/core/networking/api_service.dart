import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:space_app/core/networking/api_constants.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/crew")
  Future<List<CrewMemberModel>> getAllCrew();
}
