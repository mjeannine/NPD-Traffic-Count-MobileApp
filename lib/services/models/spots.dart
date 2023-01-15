class Spot {
  final int? id;
  final String name;
  final String code;
  final String road;
 

  Spot({
    this.id,
    required this.name,
    required this.code,
    required this.road,
  });

  factory Spot.fromJson(Map<String, dynamic> json) {
    return Spot(
      id: json['id'],
      name: json['Spot_name'],
      code: json['Spot_code'],
      road:json['Road'],
  
    );
  }
}