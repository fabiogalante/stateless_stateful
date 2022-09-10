import 'package:flutter/material.dart';

class HomeStateless extends StatelessWidget {
  String mensagem = 'Mensagem inicial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(mensagem),
          ElevatedButton(onPressed: () {}, child: const Text('Alterar Texto'))
        ],
      ),
    );
  }
}
