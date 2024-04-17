import 'package:equatable/equatable.dart';

class PayloadWeight extends Equatable {
	final String? id;
	final String? name;
	final int? kg;
	final int? lb;

	const PayloadWeight({this.id, this.name, this.kg, this.lb});

	factory PayloadWeight.fromJson(Map<String, dynamic> json) => PayloadWeight(
				id: json['id'] as String?,
				name: json['name'] as String?,
				kg: json['kg'] as int?,
				lb: json['lb'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'kg': kg,
				'lb': lb,
			};

	@override
	List<Object?> get props => [id, name, kg, lb];
}
