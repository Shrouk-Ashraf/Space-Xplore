import 'package:equatable/equatable.dart';

class Thrust extends Equatable {
	final int? kN;
	final int? lbf;

	const Thrust({this.kN, this.lbf});

	factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
				kN: json['kN'] as int?,
				lbf: json['lbf'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'kN': kN,
				'lbf': lbf,
			};

	@override
	List<Object?> get props => [kN, lbf];
}
