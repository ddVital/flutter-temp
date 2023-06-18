class Restaurant {
  int id;
  String name;
  int rate;
  String type;
  // Outros campos relevantes

  Restaurant({required this.id, required this.name, required this.type, required this.rate});

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json['id'],
        name: json['name'],
        rate: json['rate'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'rate': rate,
        'type': type,
      };
}
