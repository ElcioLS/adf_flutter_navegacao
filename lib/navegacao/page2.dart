import 'package:adf_flutter_navegacao/navegacao/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  static const String routeName = '/page2';

  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: const RouteSettings(name: 'page3'),
                  builder: (context) => const Page3(),
                ));
              },
              child: const Text('Page3 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              },
              child: const Text('Page3 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
