
class Mass  {
	final int? kg;
	final int? lb;

	const Mass({this.kg, this.lb});

	factory Mass.fromJson(Map<String, dynamic> json) => Mass(
				kg: json['kg'] as int?,
				lb: json['lb'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'kg': kg,
				'lb': lb,
			};

	@override
	List<Object?> get props => [kg, lb];
}
