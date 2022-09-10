import 'package:flutter/material.dart';

class HomeStatefull extends StatefulWidget {
  //Nao tem o build e sim o create stete

  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomeStatefull> {
  String mensagem = 'Mensagem inicial';

  @override
  void initState() {
    super.initState();
    mensagem = 'Passou pelo initState';
  }

  @override
  Widget build(BuildContext context) {
    //agora um build
    print('buildando o HomePageStateful');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(mensagem),
          ElevatedButton(
              onPressed: () {
                //sem o setState não funciona
                setState(() {
                  mensagem = 'Alterei o texto';
                });
              },
              child: const Text('Alterar Texto'))
        ],
      ),
    );
  }
}
