import 'package:space_app/core/networking/api_service.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';

class CrewRepo {
  final ApiService apiService;

  CrewRepo(this.apiService);

  Future<List<CrewMemberModel>> getAllCrew() async {
    try {
      final crewMembersList = await apiService.getAllCrew();
      return crewMembersList;
    } catch (error) {
      return [];
    }
  }
}
