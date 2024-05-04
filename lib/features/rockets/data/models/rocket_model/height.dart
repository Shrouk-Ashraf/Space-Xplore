import 'package:json_annotation/json_annotation.dart';
part 'height.g.dart';
@JsonSerializable()
class Height {
  final double meters;
  final double feet;

  const Height({required this.meters, required this.feet});
  factory Height.fromJson(json) {
    return _$HeightFromJson(json);
  }
}
