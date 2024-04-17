import 'package:equatable/equatable.dart';

import 'diameter.dart';
import 'engines.dart';
import 'first_stage.dart';
import 'height.dart';
import 'landing_legs.dart';
import 'mass.dart';
import 'payload_weight.dart';
import 'second_stage.dart';

class RocketModel extends Equatable {
	final Height? height;
	final Diameter? diameter;
	final Mass? mass;
	final FirstStage? firstStage;
	final SecondStage? secondStage;
	final Engines? engines;
	final LandingLegs? landingLegs;
	final List<PayloadWeight>? payloadWeights;
	final List<String>? flickrImages;
	final String? name;
	final String? type;
	final bool? active;
	final int? stages;
	final int? boosters;
	final int? costPerLaunch;
	final int? successRatePct;
	final String? firstFlight;
	final String? country;
	final String? company;
	final String? wikipedia;
	final String? description;
	final String? id;

	const RocketModel({
		this.height, 
		this.diameter, 
		this.mass, 
		this.firstStage, 
		this.secondStage, 
		this.engines, 
		this.landingLegs, 
		this.payloadWeights, 
		this.flickrImages, 
		this.name, 
		this.type, 
		this.active, 
		this.stages, 
		this.boosters, 
		this.costPerLaunch, 
		this.successRatePct, 
		this.firstFlight, 
		this.country, 
		this.company, 
		this.wikipedia, 
		this.description, 
		this.id, 
	});

	factory RocketModel.fromJson(Map<String, dynamic> json) => RocketModel(
				height: json['height'] == null
						? null
						: Height.fromJson(json['height'] as Map<String, dynamic>),
				diameter: json['diameter'] == null
						? null
						: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
				mass: json['mass'] == null
						? null
						: Mass.fromJson(json['mass'] as Map<String, dynamic>),
				firstStage: json['first_stage'] == null
						? null
						: FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
				secondStage: json['second_stage'] == null
						? null
						: SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
				engines: json['engines'] == null
						? null
						: Engines.fromJson(json['engines'] as Map<String, dynamic>),
				landingLegs: json['landing_legs'] == null
						? null
						: LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
				payloadWeights: (json['payload_weights'] as List<dynamic>?)
						?.map((e) => PayloadWeight.fromJson(e as Map<String, dynamic>))
						.toList(),
				flickrImages: json['flickr_images'] as List<String>?,
				name: json['name'] as String?,
				type: json['type'] as String?,
				active: json['active'] as bool?,
				stages: json['stages'] as int?,
				boosters: json['boosters'] as int?,
				costPerLaunch: json['cost_per_launch'] as int?,
				successRatePct: json['success_rate_pct'] as int?,
				firstFlight: json['first_flight'] as String?,
				country: json['country'] as String?,
				company: json['company'] as String?,
				wikipedia: json['wikipedia'] as String?,
				description: json['description'] as String?,
				id: json['id'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'height': height?.toJson(),
				'diameter': diameter?.toJson(),
				'mass': mass?.toJson(),
				'first_stage': firstStage?.toJson(),
				'second_stage': secondStage?.toJson(),
				'engines': engines?.toJson(),
				'landing_legs': landingLegs?.toJson(),
				'payload_weights': payloadWeights?.map((e) => e.toJson()).toList(),
				'flickr_images': flickrImages,
				'name': name,
				'type': type,
				'active': active,
				'stages': stages,
				'boosters': boosters,
				'cost_per_launch': costPerLaunch,
				'success_rate_pct': successRatePct,
				'first_flight': firstFlight,
				'country': country,
				'company': company,
				'wikipedia': wikipedia,
				'description': description,
				'id': id,
			};

	@override
	List<Object?> get props {
		return [
				height,
				diameter,
				mass,
				firstStage,
				secondStage,
				engines,
				landingLegs,
				payloadWeights,
				flickrImages,
				name,
				type,
				active,
				stages,
				boosters,
				costPerLaunch,
				successRatePct,
				firstFlight,
				country,
				company,
				wikipedia,
				description,
				id,
		];
	}
}
