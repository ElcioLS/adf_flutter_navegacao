import 'package:adf_flutter_navegacao/navegacao/home_page.dart' as navegacao;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      home: navegacao.HomePage(),
    );
  }
}
