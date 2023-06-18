import 'package:fast_food_app/screens/finished_screen.dart';
import 'package:flutter/material.dart';
// import 'package:fast_food_app/screens/order_tracking_screen.dart';
import '../models/cart.dart';

class PaymentScreen extends StatelessWidget {
  final int precoTotal;
  final List produtos;

  const PaymentScreen({required this.produtos, required this.precoTotal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamento'),
      ),
      body: Text(precoTotal.toString()),
    //   body: Column(
    //     children: produtos.map<Widget>((e) => Text(e['produtos'])).toList()
    //     ..addAll([
    //         Container() //You can use addAll method and add some juicy widgets
    // ]),
      // ),
      
      // body: const Column(
      //   children:  [
      //     Text(precoTotal.toString()),
      //     // Lógica para exibir as opções de pagamento
      //     // Formulário para preenchimento dos dados de pagamento
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FineshedScreen()),
          );
        },
      ),
    );
  }
}
