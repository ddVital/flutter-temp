import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/order_tracking_screen.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamento'),
      ),
      body: Column(
        children: const [
          // Lógica para exibir as opções de pagamento
          // Formulário para preenchimento dos dados de pagamento
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderTrackingScreen()),
          );
        },
      ),
    );
  }
}
