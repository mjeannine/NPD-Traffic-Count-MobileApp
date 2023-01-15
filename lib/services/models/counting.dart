class Counting {
  final int? id;
  final String collector;
  final String vehicle;
  final int? count;


  Counting({
    this.id,
    required this.collector,
    required this.vehicle,
    required this.count,
  });

  factory Counting.fromJson(Map<String, dynamic> json) {
    return Counting(
      id: json['id'],
      collector: json['collector'],
      vehicle: json['vehicle'],
      count: json['Traffic_countings'],

  
    );
  }
}