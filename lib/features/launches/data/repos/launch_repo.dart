import 'package:space_app/core/networking/api_error_handler.dart';
import 'package:space_app/core/networking/api_result.dart';
import 'package:space_app/core/networking/api_service.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';

class LaunchRepo {
  final ApiService _apiService;
  LaunchRepo(this._apiService);

  Future<ApiResult<List<LaunchResponse>>> getAllLaunches() async {
    try {
      final response = await _apiService.getAllLaunches();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
