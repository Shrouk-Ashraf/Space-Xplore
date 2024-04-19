
import 'thrust_sea_level.dart';
import 'thrust_vacuum.dart';

class FirstStage  {
	final ThrustSeaLevel? thrustSeaLevel;
	final ThrustVacuum? thrustVacuum;
	final bool? reusable;
	final int? engines;
	final double? fuelAmountTons;
	final int? burnTimeSec;

	const FirstStage({
		this.thrustSeaLevel, 
		this.thrustVacuum, 
		this.reusable, 
		this.engines, 
		this.fuelAmountTons, 
		this.burnTimeSec, 
	});

	factory FirstStage.fromJson(Map<String, dynamic> json) => FirstStage(
				thrustSeaLevel: json['thrust_sea_level'] == null
						? null
						: ThrustSeaLevel.fromJson(json['thrust_sea_level'] as Map<String, dynamic>),
				thrustVacuum: json['thrust_vacuum'] == null
						? null
						: ThrustVacuum.fromJson(json['thrust_vacuum'] as Map<String, dynamic>),
				reusable: json['reusable'] as bool?,
				engines: json['engines'] as int?,
				fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
				burnTimeSec: json['burn_time_sec'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'thrust_sea_level': thrustSeaLevel?.toJson(),
				'thrust_vacuum': thrustVacuum?.toJson(),
				'reusable': reusable,
				'engines': engines,
				'fuel_amount_tons': fuelAmountTons,
				'burn_time_sec': burnTimeSec,
			};

	@override
	List<Object?> get props {
		return [
				thrustSeaLevel,
				thrustVacuum,
				reusable,
				engines,
				fuelAmountTons,
				burnTimeSec,
		];
	}
}
