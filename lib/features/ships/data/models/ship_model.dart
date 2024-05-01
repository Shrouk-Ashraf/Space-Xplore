import 'package:json_annotation/json_annotation.dart';

part 'ship_model.g.dart';

// TODO: Run the following command in the terminal whenever you make any changes to this file ==> dart run build_runner build
@JsonSerializable()
class ShipModel {
  @JsonKey(name: 'id')
  String? shipId;
  @JsonKey(name: 'name')
  String? shipName;
  dynamic shipModel;
  @JsonKey(name: 'type')
  String? shipType;
  List<String>? roles;
  bool? active;
  int? imo;
  int? mmsi;
  int? abs;
  int? shipModelClass;
  int? weightLbs;
  @JsonKey(name: 'mass_kg')
  int? weightKg;
  @JsonKey(name: 'year_built')
  int? yearBuilt;
  @JsonKey(name: 'home_port')
  String? homePort;
  String? status;
  dynamic speedKn;
  dynamic courseDeg;
  dynamic successfulLandings;
  dynamic attemptedLandings;
  String? link;
  String? image;

  ShipModel({
    this.shipId,
    this.shipName,
    this.shipModel,
    this.shipType,
    this.roles,
    this.active,
    this.imo,
    this.mmsi,
    this.abs,
    this.shipModelClass,
    this.weightLbs,
    this.weightKg,
    this.yearBuilt,
    this.homePort,
    this.status,
    this.speedKn,
    this.courseDeg,
    this.successfulLandings,
    this.attemptedLandings,
    this.link,
    this.image,
  });

  factory ShipModel.fromJson(Map<String, dynamic> json) =>
      _$ShipModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShipModelToJson(this);
}
