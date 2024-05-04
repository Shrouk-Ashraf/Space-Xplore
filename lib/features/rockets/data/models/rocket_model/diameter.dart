import 'package:json_annotation/json_annotation.dart';
part 'diameter.g.dart';
@JsonSerializable()
class Diameter  {
	final double meters;
	final double feet;

	const Diameter({required this.meters,required this.feet});
  factory Diameter.fromJson(json) {
    return _$DiameterFromJson(json);
  }
}

