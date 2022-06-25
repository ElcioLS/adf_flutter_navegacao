import 'package:flutter/material.dart';

class Detalhe extends StatelessWidget {
  const Detalhe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final param = ModalRoute.of(context)?.settings.arguments
        as Map<String, dynamic>?; //fazendo assim uma conversão para Map
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Text('O id do produto é ${param?['id'] ?? 0}'),
      ),
    );
  }
}
