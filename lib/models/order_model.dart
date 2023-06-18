class Order {
  int id;
  String restaurant;
  List<String> dishes;

  Order({required this.id, required this.restaurant, required this.dishes});

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json['id'],
        restaurant: json['restaurant'],
        dishes: List<String>.from(json['dishes']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'restaurant': restaurant,
        'dishes': dishes,
      };
}
