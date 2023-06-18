import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/models/user_model.dart';
import 'package:fast_food_app/models/order_model.dart';
import 'package:mysql1/mysql1.dart';
import '../models/restaurant_model.dart';

class Database {
  static MySqlConnection? _connection;

  static Future<MySqlConnection?> connectToDatabase() async {
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '',
      db: 'japas',
    );

    try {
      _connection = await MySqlConnection.connect(settings);

      print('Connected to database');
    } catch (e) {
      print('Error connecting to database: $e');
    }
    
    return _connection;
  }

  static Future<User?> getUser(int userId) async {
    final results = await _connection!.query('SELECT * FROM users WHERE id = ?', [userId]);

    if (results.isNotEmpty) {
      return User.fromJson(results.first.fields);
    }

    return null;
  }

  static Future<List<Order>> getUserOrders(int userId) async {
    final results = await _connection!.query('SELECT * FROM orders WHERE user_id = ?', [userId]);

    final orders = <Order>[];
    for (final row in results) {
      orders.add(Order.fromJson(row.fields));
    }

    return orders;
  }

  static Future<int?> saveUser(User user) async {
    final result = await _connection!.query(
      'INSERT INTO users (name, email, password) VALUES (?, ?, ?)',
      [user.name, user.email, user.password],
    );

    return result.insertId;
  }

  static Future<int?> saveOrder(Order order) async {
    final result = await _connection!.query(
      'INSERT INTO orders (restaurant, dishes) VALUES (?, ?)',
      [order.restaurant, order.dishes.join(',')],
    );

    return result.insertId;
  }

   static Future<List<Restaurant>> getAllRestaurants() async {
    final connection = await connectToDatabase();
    final results = await connection!.query('SELECT * FROM restaurant');

    final restaurants = <Restaurant>[];
    for (final row in results) {
      restaurants.add(
        Restaurant(
          id: row['id'],
          name: row['name'],
          rate: row['rate'],
          type: row['type']
        ),
      );
    }

    return restaurants;
  }
}
