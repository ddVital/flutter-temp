import '../data/database.dart';

class AuthService {
  static Future<bool?> login(String username, String password) async {
    final connection = await Database.connectToDatabase();

    final results = await connection?.query(
      'SELECT * FROM users WHERE username = ? AND password = ?',
      [username, password],
    );

    connection?.close();

    return results?.isNotEmpty;
  }
}
