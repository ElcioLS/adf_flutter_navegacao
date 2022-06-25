import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  const Detalhe({Key? key}) : super(key: key);

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int? id;

  @override
  void initState() {
    super.initState();
    //preciso utilizar a linha abaixo ao invés do futureDelayed(Duration(seconds: 1))
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param = ModalRoute.of(context)?.settings.arguments
          as Map<String, dynamic>?; //fazendo assim uma conversão para Map
      setState(() {
        id = param?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Text('O id do produto é $id'),
      ),
    );
  }
}
