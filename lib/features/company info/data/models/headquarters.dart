import 'package:json_annotation/json_annotation.dart';
part 'headquarters.g.dart';

@JsonSerializable()
class Headquarters {
  String address;
  String city;
  String state;

  Headquarters({
    required this.address,
    required this.city,
    required this.state,
  });

  factory Headquarters.fromJson(json) => _$HeadquartersFromJson(json);
}
