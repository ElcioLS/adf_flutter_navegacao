import 'package:adf_flutter_navegacao/navegacao/page1.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //Remover as paginas até voltar para a página 2
              // onPressed: () {
              //   Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(
              //       settings: const RouteSettings(name: 'page1'),
              //       builder: (context) => const Page1(),
              //     ),
              //     ModalRoute.withName('page2'), // Remover as páginas até voltar para a Page 2
              //   );
              // },

              //Remover todas as paginas até voltar para a página 1
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: 'page1'),
                      builder: (context) => const Page1(),
                    ),
                    (route) => route.isFirst); //remove tds pág até chegar a 1ª
//  (route) => false); // como "false" eu removo todas ideal para telas de login
              },
              child: const Text('Page1 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/page1', ModalRoute.withName('/page2'));
              },
              child: const Text('Page1 via Named'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pushNamed('/page1');
            //   },
            //   child: const Text('Page1 via Named'),
            // ),
          ],
        ),
      ),
    );
  }
}
