import 'package:flutter/material.dart';
import 'package:stateless_stateful/stateless.dart';

class HomeStatefull extends StatefulWidget {
  HomeStatefull() {
    print('1 - HomeStatefull construtctor');
  }

  //Nao tem o build e sim o create stete

  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomeStatefull> {
  _HomePageStateFullState() {
    print('2 - HomeStatefull construtctor in _HomePageStateFullState');
  }

  String mensagem = 'Mensagem inicial';

  @override
  void initState() {
    super.initState();
    mensagem = 'Passou pelo initState';
    print('3 - initState');

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeStateless(),
      ));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('4 - didChangeDependencies');
  }

  @override
  Widget build(BuildContext context) {
    //agora um build
    print('buildando o HomePageStateful');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
