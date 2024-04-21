
class ThrustVacuum   {
	final int? kN;
	final int? lbf;

	const ThrustVacuum({this.kN, this.lbf});

	factory ThrustVacuum.fromJson(Map<String, dynamic> json) => ThrustVacuum(
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
