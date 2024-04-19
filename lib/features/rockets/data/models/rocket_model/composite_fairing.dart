
import 'diameter.dart';
import 'height.dart';

class CompositeFairing  {
	final Height? height;
	final Diameter? diameter;

	const CompositeFairing({this.height, this.diameter});

	factory CompositeFairing.fromJson(Map<String, dynamic> json) {
		return CompositeFairing(
			height: json['height'] == null
						? null
						: Height.fromJson(json['height'] as Map<String, dynamic>),
			diameter: json['diameter'] == null
						? null
						: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'height': height?.toJson(),
				'diameter': diameter?.toJson(),
			};

	@override
	List<Object?> get props => [height, diameter];
}
