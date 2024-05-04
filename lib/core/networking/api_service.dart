import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:space_app/core/networking/api_constants.dart';
import 'package:space_app/features/company%20info/data/models/company_info_model.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';
import 'package:retrofit/http.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';
import 'package:space_app/features/launches/data/models/query_launch_response.dart';
import 'package:space_app/features/rockets/data/models/rocket_model/rocket_model.dart';
import 'package:space_app/features/ships/data/models/ship_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // crew
  @GET(ApiConstants.crew)
  Future<List<CrewMemberModel>> getAllCrew();

  @POST(ApiConstants.allLaunches)
  Future<QueryLaunchResponse> getAllLaunches(@Body() body);

  @GET('${ApiConstants.launch}/{id}')
  Future<LaunchResponse> getOneLaunch({@Path('id') required int id});

  @GET(ApiConstants.ships)
  Future<List<ShipModel>> getAllShips();

  @GET(ApiConstants.rockets)
  Future<List<RocketModel>> getAllRockets();

  @GET('${ApiConstants.rockets}/{id}')
  Future<RocketModel> getRocket(@Path('id') String id);

  @GET(ApiConstants.companyInfo)
  Future<CompanyInfoModel> getCompanyInfo();
}
