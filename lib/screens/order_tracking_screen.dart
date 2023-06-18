import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/review_screen.dart';

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rastreamento de Pedido'),
      ),
      body: Column(
        children: const [
          // Lógica para exibir o status do pedido e informações de rastreamento
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReviewScreen()),
          );
        },
      ),
    );
  }
}
