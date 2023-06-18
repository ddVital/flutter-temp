import 'package:mysql1/mysql1.dart';
import '../models/restaurant_model.dart';

class RestaurantService {
  final MySqlConnection _connection;

  RestaurantService(this._connection);

  Future<List<Restaurant>> getAllRestaurants() async {
    final results = await _connection.query('SELECT * FROM restaurant');

    final restaurants = <Restaurant>[];
    for (final row in results) {
      restaurants.add(Restaurant.fromJson(row.fields));
    }

    return restaurants;
  }
}
