import 'package:fast_food_app/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import '../data/database.dart';
// import '../models/restaurant_model.dart';
import '../models/pratos.dart';
import '../models/cart.dart';
import './order_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Pratos> pratos = [
    Pratos(
      name: 'Prato A',
      description: 'Description of Prato A',
      img: "",
      preco: 23,
    ),
    Pratos(
      name: 'Prato B',
      description: 'Description of Prato B',
      img: "",
      preco: 23,
    ),
    Pratos(
      name: 'Prato C',
      description: 'Description of Prato C',
      img: "",
      preco: 23,
    ),
  ];

  final List<Cart> carrinho = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastFood',
      home: HomePage(pratos: pratos, carrinho: carrinho,),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Pratos> pratos;
  final List<Cart> carrinho;

  const HomePage({required this.pratos, required this.carrinho});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JAPA's App"),
      ),
      body: ListView.builder(
        itemCount: pratos.length,
        itemBuilder: (context, index) {
          final prato = pratos[index];
          final name = prato.name;
          return ListTile(
            title: Text(name),
            subtitle: Text(prato.description),
            trailing: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                // int precoTotal = 0;
                // pratos.forEach((element) => precoTotal += element.preco);
                int precoTotal = pratos[index].preco;
                carrinho.add(Cart(produtos: [name], precoTotal: precoTotal));
                carrinho.forEach((element) => print(element.produtos));
                print(carrinho.length);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => OrderScreen(name: prato.name),
                //   ),
                // );
              },
            ),
            
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.payment),
        onPressed: () {
          int precoTotal = 0;
          List produtos = [];

          carrinho.forEach((element) => produtos = [element.produtos]);
          carrinho.forEach((element) => precoTotal += element.precoTotal);
          
          print(pratos);
          print(precoTotal);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentScreen(produtos: pratos, precoTotal: precoTotal),
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
