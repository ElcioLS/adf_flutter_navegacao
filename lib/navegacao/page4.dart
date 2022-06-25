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
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page1'),
                    builder: (context) => const Page1(),
                  ),
                  ModalRoute.withName('page2'),
                );
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
              onPressed: () {},
              child: const Text('Page1 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
