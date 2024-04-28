import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:space_app/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import 'models/rocket_model/rocket_model.dart';
part 'rocket_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RocketService {
 static const String id='';
  // factory RocketService(Dio dio, {String baseUrl}) = _RocketService;

  @GET(ApiConstants.rockets)
  Future<List<RocketModel>> gethAllRockets();
   @GET(ApiConstants.rockets + '/{id}')
  Future<RocketModel> getRocket(@Path('id') String id);
}
