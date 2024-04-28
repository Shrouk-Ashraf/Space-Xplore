import 'package:json_annotation/json_annotation.dart';

part 'crew_member_model.g.dart';

@JsonSerializable()
class CrewMemberModel {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'agency')
  final String agency;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'image')
  final String imageUrl;
  @JsonKey(name: 'wikipedia')
  final String wikipediaUrl;

  CrewMemberModel({
    required this.name,
    required this.agency,
    required this.status,
    required this.imageUrl,
    required this.wikipediaUrl,
  });
  factory CrewMemberModel.fromJson(Map<String, dynamic> json) =>
      _$CrewMemberModelFromJson(json);

  Map<String, dynamic> toJson() => _$CrewMemberModelToJson(this);

  // factory CrewMemberModel.fromJson(Map<String, dynamic> json) {
  //   return CrewMemberModel(
  //     name: json["name"],
  //     agency: json["agency"],
  //     status: json["status"],
  //     imageUrl: json["image"],
  //     wikipediaUrl: json["wikipedia"],
  //   );
  // }
}
