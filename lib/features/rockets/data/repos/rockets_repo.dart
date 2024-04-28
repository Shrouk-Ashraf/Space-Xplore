import 'package:space_app/features/rockets/data/models/rocket_model/rocket_model.dart';

import '../rocket_service.dart';

class RocketsRepo {
  final RocketService rocketService;

  RocketsRepo(this.rocketService);
  Future<List<RocketModel>> fetchAllRockets() async {
    var response = await rocketService.gethAllRockets();
    return response
        .map((singleRocket) => RocketModel.fromJson(singleRocket.toJson()))
        .toList();
  }

  Future<RocketModel> fetchRocket(String id) async {
    var response = await rocketService.getRocket(id);
    return RocketModel.fromJson(response.toJson());
  }
}
