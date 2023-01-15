class Phase {
  final int? id;
  final String name;
  final String location;

  Phase({
    this.id,
    required this.name,
    required this.location,
  });

  factory Phase.fromJson(Map<String, dynamic> json) {
    return Phase(
      id: json['id'],
      name: json['Phase_name'],
      location: json['Phase_location'],
  
    );
  }
}