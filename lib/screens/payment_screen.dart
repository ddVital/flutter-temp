import 'package:fast_food_app/screens/finished_screen.dart';
import 'package:flutter/material.dart';
// import 'package:fast_food_app/screens/order_tracking_screen.dart';
//import '../models/cart.dart';

// ignore: must_be_immutable
class PaymentScreen extends StatelessWidget {
  final int precoTotal;
  late int id;
  final String produtos;
  final List carrinho;
  late String preco;

  PaymentScreen({required this.carrinho, required this.id, required this.produtos, required this.precoTotal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        title: Text('Pagamento total R\$ $precoTotal'),
      ),
      
      body: ListView.builder(
        itemCount: carrinho.length,
        itemBuilder: (context, index) {
          carrinho.forEach((item) => print(item.id));
          preco = carrinho[index].precoTotal.toString();

          return ListTile(
            title: Text(carrinho[index].produtos.toString()),
            subtitle: Text(carrinho[index].desc.toString()),
            trailing: Container(
                width: 100,
                child: Row(children: <Widget>[
                  Text("R\$ $preco")
          ])));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FineshedScreen(carrinho: carrinho)),
          );
        },
      ),
    );
  }
}
