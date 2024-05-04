import 'package:json_annotation/json_annotation.dart';
part 'mass.g.dart';
@JsonSerializable()
class Mass  {
	final int kg;
	final int lb;

	const Mass({required this.kg, required this.lb});

  factory Mass.fromJson(json) {
    return _$MassFromJson(json);
  }
}

