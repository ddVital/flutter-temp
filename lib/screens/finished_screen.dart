import 'package:flutter/material.dart';

class FineshedScreen extends StatelessWidget {
  final List carrinho;

  FineshedScreen({required this.carrinho});


  @override
  Widget build(BuildContext context) {
    carrinho.clear();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text('Pedido Concluido'),
        ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check,
                  size: 100,
                  color: Colors.green,
                ),
                SizedBox(height: 20),
                Text(
                  'Pedido Concluído',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.check),
            onPressed: () {
              // Lógica para enviar a avaliação e retornar à tela inicial
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        );
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.lightGreen,
    //     title: const Text('Pedido Concluido'),
    //   ),
    //   body: const Column(
    //     children: [
    //       Text("pedido concluido com sucesso"),
    //     ],
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     child: const Icon(Icons.check),
    //     onPressed: () {
    //       // Lógica para enviar a avaliação e retornar à tela inicial
    //       Navigator.popUntil(context, ModalRoute.withName('/'));
    //     },
    //   ),
    // );
  }
}
