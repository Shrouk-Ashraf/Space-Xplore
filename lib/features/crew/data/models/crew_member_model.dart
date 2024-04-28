class CrewMemberModel {
  final String name;
  final String agency;
  final String status;
  final String imageUrl;
  final String wikipediaUrl;

  CrewMemberModel({
    required this.name,
    required this.agency,
    required this.status,
    required this.imageUrl,
    required this.wikipediaUrl,
  });

  factory CrewMemberModel.fromJson(Map<String, dynamic> json) {
    return CrewMemberModel(
      name: json["name"],
      agency: json["agency"],
      status: json["status"],
      imageUrl: json["image"],
      wikipediaUrl: json["wikipedia"],
    );
  }
}
