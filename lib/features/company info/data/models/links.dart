import 'package:json_annotation/json_annotation.dart';
part 'links.g.dart';

@JsonSerializable()
class Links {
  String website;
  String flickr;
  String twitter;
  @JsonKey(name: "elon_twitter")
  String elonTwitter;

  Links({
    required this.website,
    required this.flickr,
    required this.twitter,
    required this.elonTwitter,
  });

  factory Links.fromJson(json) => _$LinksFromJson(json);
}
