import 'package:space_app/features/crew/data/crew_member_model.dart';
import 'package:space_app/features/crew/data/crew_service.dart';

class CrewRepo {
  final CrewService crewService;

  CrewRepo(this.crewService);

  Future<List<CrewMemberModel>> getAllCrew() async {
    final crewMembersList = await crewService.getAllCrew();
    return crewMembersList;
  }

  Future<CrewMemberModel> getCrewMemberByID({required crewMemberID}) async {
    final crewMember =
        await crewService.getCrewMemberByID(crewMemberID: crewMemberID);
    return crewMember;
  }
}
