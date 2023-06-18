import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avaliação do Pedido'),
      ),
      body: Column(
        children: const [
          // Lógica para exibir os detalhes do pedido e formulário de avaliação
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          // Lógica para enviar a avaliação e retornar à tela inicial
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
    );
  }
}
