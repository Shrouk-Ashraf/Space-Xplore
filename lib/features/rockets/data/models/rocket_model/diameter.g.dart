// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };
