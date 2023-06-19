import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/payment_screen.dart';
import '../models/pratos.dart';

class OrderScreen extends StatelessWidget {
  // final List<Restaurant> restaurants;
  final String name;
  
  const OrderScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fazer Pedido'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Text(name),
      // body: const Column(
      //   children: [
      //     ListTile(name)
      //     // Lógica para exibir a lista de restaurantes e pratos disponíveis
      //     // Botões de seleção de restaurante e pratos
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          // Navigator.push(
            // context,
            // MaterialPageRoute(builder: (context) => const PaymentScreen(pratos: "prato A", precoTotal: 10)),
          // );
        },
      ),
    );
  }
}
