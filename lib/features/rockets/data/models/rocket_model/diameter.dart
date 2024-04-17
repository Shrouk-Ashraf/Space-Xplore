import 'package:equatable/equatable.dart';

class Diameter extends Equatable {
	final double? meters;
	final double? feet;

	const Diameter({this.meters, this.feet});

	factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
				meters: (json['meters'] as num?)?.toDouble(),
				feet: (json['feet'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'meters': meters,
				'feet': feet,
			};

	@override
	List<Object?> get props => [meters, feet];
}
