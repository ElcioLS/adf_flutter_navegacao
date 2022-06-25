import 'package:adf_flutter_navegacao/navegacao/home_page.dart' as navegacao;
import 'package:adf_flutter_navegacao/navegacao/page2.dart';
import 'package:adf_flutter_navegacao/navegacao/page3.dart';
import 'package:adf_flutter_navegacao/navegacao/page4.dart';
import 'package:adf_flutter_navegacao/navegacao_params/detalhe.dart';
import 'package:adf_flutter_navegacao/navegacao_params/lista.dart';
import 'package:flutter/material.dart';

import 'navegacao/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      // home: navegacao.HomePage(), //não precisa mais...
      initialRoute: '/navegacao_param', //o Default é '/' para initialRoute
      routes: {
        '/': (_) => const navegacao.HomePage(),
        '/page1': (_) => const Page1(),
        Page2.routeName: (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
        '/navegacao_param': (_) => const Lista(),
        '/detalhe': (_) => const Detalhe(),
      },
    );
  }
}





//
//
//main NAVEGAÇÃO POR PÁGINAS

// import 'package:adf_flutter_navegacao/navegacao/home_page.dart' as navegacao;
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Navegação',
//       home: navegacao.HomePage(),
//     );
//   }
// }
