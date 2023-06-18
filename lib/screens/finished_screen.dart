import 'package:flutter/material.dart';

class FineshedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedido Concluido'),
      ),
      body: const Column(
        children: [
          Text("pedido concluido com sucesso"),
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
