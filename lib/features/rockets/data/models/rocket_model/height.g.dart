// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'height.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };
