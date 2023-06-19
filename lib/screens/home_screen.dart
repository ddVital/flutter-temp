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
      img: "https://th.bing.com/th/id/R.7aa43b384e5953db75e44c8936b65c07?rik=tdE5q1pLqbqNUA&pid=ImgRaw&r=0",
      preco: 23,
    ),
    Pratos(
      name: 'Prato B',
      description: 'Description of Prato B',
      img: "https://th.bing.com/th/id/R.f42033cd2bac51042f4f7ee54a590f38?rik=r8YbOHQ7amIOqA&pid=ImgRaw&r=0",
      preco: 23,
    ),
    Pratos(
      name: 'Prato C',
      description: 'Description of Prato C',
      img: "https://th.bing.com/th/id/OIP.RRVEgqQwCtxRjAtXn5RyowHaHa?pid=ImgDet&rs=1",
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
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        itemCount: pratos.length,
        itemBuilder: (context, index) {
          final prato = pratos[index];
          final name = prato.name;
          int precoTotal = 0;
          return ListTile(
            leading: Image.network(prato.img, cacheWidth: 100, cacheHeight: 100,),
            title: Text(name),
            subtitle: Text(prato.description),
            trailing: Container(
                width: 100,
                child: Row(children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if (precoTotal > 0) {
                        precoTotal -= pratos[index].preco;
                      }
                      print(index);

                      carrinho.removeWhere((item) => item.id == index);
                      carrinho.forEach((element) => print(element.produtos));
                      print(carrinho.length);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      precoTotal = pratos[index].preco;
                      carrinho.add(Cart(id: index, produtos: name, desc: prato.description, precoTotal: precoTotal));
                      carrinho.forEach((element) => print(element.produtos));
                      print(carrinho.length);
                    },
                  ),
                ])));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.payment),
        onPressed: () {
          int precoTotal = 0;
          int id = 0;
          String produtos = '';

          carrinho.forEach((element) => id = element.id);
          carrinho.forEach((element) => produtos = element.produtos);
          carrinho.forEach((element) => precoTotal += element.precoTotal);
          
          print(pratos);
          print(precoTotal);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentScreen(carrinho: carrinho, id: id, produtos: produtos, precoTotal: precoTotal),
            ),
          );
        },
      ),
    );
  }
}