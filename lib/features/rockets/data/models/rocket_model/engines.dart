



import 'isp.dart';
import 'thrust_sea_level.dart';
import 'thrust_vacuum.dart';




class Engines  {

	final Isp? isp;
	final ThrustSeaLevel? thrustSeaLevel;
	final ThrustVacuum? thrustVacuum;
	final int? number;
	final String? type;
	final String? version;
	final String? layout;
	final int? engineLossMax;
	final String? propellant1;
	final String? propellant2;
	final int? thrustToWeight;

	const Engines({
		this.isp, 
		this.thrustSeaLevel, 
		this.thrustVacuum, 
		this.number, 
		this.type, 
		this.version, 
		this.layout, 
		this.engineLossMax, 
		this.propellant1, 
		this.propellant2, 
		this.thrustToWeight, 
	});

	factory Engines.fromJson(Map<String, dynamic> json) => Engines(
				isp: json['isp'] == null
						? null
						: Isp.fromJson(json['isp'] as Map<String, dynamic>),
				thrustSeaLevel: json['thrust_sea_level'] == null
						? null
						: ThrustSeaLevel.fromJson(json['thrust_sea_level'] as Map<String, dynamic>),
				thrustVacuum: json['thrust_vacuum'] == null
						? null
						: ThrustVacuum.fromJson(json['thrust_vacuum'] as Map<String, dynamic>),
				number: json['number'] as int?,
				type: json['type'] as String?,
				version: json['version'] as String?,
				layout: json['layout'] as String?,
				engineLossMax: json['engine_loss_max'] as int?,
				propellant1: json['propellant_1'] as String?,
				propellant2: json['propellant_2'] as String?,
				thrustToWeight: json['thrust_to_weight'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'isp': isp?.toJson(),
				'thrust_sea_level': thrustSeaLevel?.toJson(),
				'thrust_vacuum': thrustVacuum?.toJson(),
				'number': number,
				'type': type,
				'version': version,
				'layout': layout,
				'engine_loss_max': engineLossMax,
				'propellant_1': propellant1,
				'propellant_2': propellant2,
				'thrust_to_weight': thrustToWeight,
			};

	@override
	List<Object?> get props {
		return [
				isp,
				thrustSeaLevel,
				thrustVacuum,
				number,
				type,
				version,
				layout,
				engineLossMax,
				propellant1,
				propellant2,
				thrustToWeight,
		];
	}
}
