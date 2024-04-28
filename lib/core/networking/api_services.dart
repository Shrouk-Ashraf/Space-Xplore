import 'package:space_app/features/ships/data/ship_model/ship_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: "https://api.spacexdata.com/v3/")
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @GET('ships')
  Future<List<ShipModel>> getAllShips();
}
