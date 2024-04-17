import 'package:equatable/equatable.dart';

class Isp extends Equatable {
	final int? seaLevel;
	final int? vacuum;

	const Isp({this.seaLevel, this.vacuum});

	factory Isp.fromJson(Map<String, dynamic> json) => Isp(
				seaLevel: json['sea_level'] as int?,
				vacuum: json['vacuum'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'sea_level': seaLevel,
				'vacuum': vacuum,
			};

	@override
	List<Object?> get props => [seaLevel, vacuum];
}
