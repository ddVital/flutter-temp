import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/payment_screen.dart';

class OrderScreen extends StatelessWidget {
  // final List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fazer Pedido'),
      ),
      body: Column(
        children: [
          // Lógica para exibir a lista de restaurantes e pratos disponíveis
          // Botões de seleção de restaurante e pratos
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentScreen()),
          );
        },
      ),
    );
  }
}
