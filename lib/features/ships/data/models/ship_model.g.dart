// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipModel _$ShipModelFromJson(Map<String, dynamic> json) => ShipModel(
      shipId: json['id'] as String?,
      shipName: json['name'] as String?,
      shipModel: json['shipModel'],
      shipType: json['type'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      active: json['active'] as bool?,
      imo: (json['imo'] as num?)?.toInt(),
      mmsi: (json['mmsi'] as num?)?.toInt(),
      abs: (json['abs'] as num?)?.toInt(),
      shipModelClass: (json['shipModelClass'] as num?)?.toInt(),
      weightLbs: (json['weightLbs'] as num?)?.toInt(),
      weightKg: (json['mass_kg'] as num?)?.toInt(),
      yearBuilt: (json['year_built'] as num?)?.toInt(),
      homePort: json['home_port'] as String?,
      status: json['status'] as String?,
      speedKn: json['speedKn'],
      courseDeg: json['courseDeg'],
      successfulLandings: json['successfulLandings'],
      attemptedLandings: json['attemptedLandings'],
      link: json['link'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ShipModelToJson(ShipModel instance) => <String, dynamic>{
      'id': instance.shipId,
      'name': instance.shipName,
      'shipModel': instance.shipModel,
      'type': instance.shipType,
      'roles': instance.roles,
      'active': instance.active,
      'imo': instance.imo,
      'mmsi': instance.mmsi,
      'abs': instance.abs,
      'shipModelClass': instance.shipModelClass,
      'weightLbs': instance.weightLbs,
      'mass_kg': instance.weightKg,
      'year_built': instance.yearBuilt,
      'home_port': instance.homePort,
      'status': instance.status,
      'speedKn': instance.speedKn,
      'courseDeg': instance.courseDeg,
      'successfulLandings': instance.successfulLandings,
      'attemptedLandings': instance.attemptedLandings,
      'link': instance.link,
      'image': instance.image,
    };
