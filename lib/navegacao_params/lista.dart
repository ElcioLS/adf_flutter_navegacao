import 'package:adf_flutter_navegacao/navegacao_params/detalhe.dart';
import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                        name: 'detalhe', arguments: {'id': 39}),
                    builder: ((context) => const Detalhe()),
                  ),
                );
              },
              child: const Text('detalhe'),
            ),
          ],
        ),
      ),
    );
  }
}
