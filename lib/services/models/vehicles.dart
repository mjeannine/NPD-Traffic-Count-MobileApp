class Vehicle {
  final int? id;
  final String category;
  final String image;
 
 

  Vehicle({
    this.id,
    required this.category,
    required this.image,
   
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      id: json['id'],
      category: json['vehicle_category'],
      image: json['vehicle_image'],
  
    );
  }
}