
class LandingLegs  {
	final int? number;
	final dynamic material;

	const LandingLegs({this.number, this.material});

	factory LandingLegs.fromJson(Map<String, dynamic> json) => LandingLegs(
				number: json['number'] as int?,
				material: json['material'] as dynamic,
			);

	Map<String, dynamic> toJson() => {
				'number': number,
				'material': material,
			};

	@override
	List<Object?> get props => [number, material];
}
