import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:space_app/core/networking/api_constants.dart';
import 'package:space_app/features/crew/data/crew_member_model.dart';

class CrewService {
  final Dio dio;

  CrewService(this.dio);

  Future<List<CrewMemberModel>> getAllCrew() async {
    try {
      Response response =
          await dio.get('${ApiConstants.apiBaseUrl}/${ApiConstants.crew}');

      List<dynamic> crewList = response.data;
      List<CrewMemberModel> returnedCrewList = [];
      for (final member in crewList) {
        returnedCrewList.add(CrewMemberModel.fromJson(member));
      }
      return returnedCrewList;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops, there was an error, try again later...';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());

      throw Exception('Oops, there was an error, try again later...');
    }
  }

  Future<CrewMemberModel> getCrewMemberByID({required crewMemberID}) async {
    try {
      Response response = await dio
          .get('${ApiConstants.apiBaseUrl}/${ApiConstants.crew}/$crewMemberID');

      CrewMemberModel crewMember = CrewMemberModel.fromJson(response.data);
      return crewMember;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops, there was an error, try again later...';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());

      throw Exception('Oops, there was an error, try again later...');
    }
  }
}
