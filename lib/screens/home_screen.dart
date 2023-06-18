import 'package:flutter/material.dart';
import '../data/database.dart';
// import '../models/restaurant_model.dart';
import '../models/restaurant.dart';
import './order_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Restaurant> restaurants = [
    Restaurant(
      name: 'Restaurant A',
      description: 'Description of Restaurant A',
    ),
    Restaurant(
      name: 'Restaurant B',
      description: 'Description of Restaurant B',
    ),
    Restaurant(
      name: 'Restaurant C',
      description: 'Description of Restaurant C',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      home: HomePage(restaurants: restaurants),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Restaurant> restaurants;

  const HomePage({required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JAPA's App"),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return ListTile(
            title: Text(restaurant.name),
            subtitle: Text(restaurant.description),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderScreen(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   final List<Restaurant> restaurants = [
//     Restaurant(
//       name: 'Restaurant A',
//       description: 'Description of Restaurant A',
//     ),
//     Restaurant(
//       name: 'Restaurant B',
//       description: 'Description of Restaurant B',
//     ),
//     Restaurant(
//       name: 'Restaurant C',
//       description: 'Description of Restaurant C',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Restaurant>>(
//       // future: Database.getAllRestaurants(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final restaurants = snapshot.data;

//           // Exiba os restaurantes na interface do usuário (por exemplo, ListView, GridView, etc.)
//           return ListView.builder(
//             itemCount: restaurants!.length,
//             itemBuilder: (context, index) {
//               final restaurant = restaurants[index];
//               return ListTile(
//                 title: Text(restaurant.name),
//                 subtitle: Text(restaurant.rate as String),
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return const Text('Erro ao carregar os restaurantes');
//         }

//         return const CircularProgressIndicator();
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:fast_food_app/screens/order_screen.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Fazer Pedido'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => OrderScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
