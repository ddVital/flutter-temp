// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/login_screen.dart';
// import 'package:fast_food_app/screens/signup_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastFoodOrder',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: LoginScreen(),
      // home: SignupScreen(),
    );
  }
}