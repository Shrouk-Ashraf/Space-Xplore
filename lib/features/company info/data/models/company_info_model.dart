import 'package:json_annotation/json_annotation.dart';
import 'package:space_app/features/company%20info/data/models/headquarters.dart';
import 'package:space_app/features/company%20info/data/models/links.dart';
part 'company_info_model.g.dart';

@JsonSerializable()
class CompanyInfoModel {
  Headquarters headquarters;
  Links links;
  String name;
  String founder;
  int founded;
  int employees;
  int vehicles;
  @JsonKey(name: "launch_sites")
  int launchSites;
  @JsonKey(name: "test_sites")
  int testSites;
  String ceo;
  String summary;

  CompanyInfoModel({
    required this.headquarters,
    required this.links,
    required this.name,
    required this.founder,
    required this.founded,
    required this.employees,
    required this.vehicles,
    required this.testSites,
    required this.launchSites,
    required this.ceo,
    required this.summary,
  });

  factory CompanyInfoModel.fromJson(json) => _$CompanyInfoModelFromJson(json);
}
