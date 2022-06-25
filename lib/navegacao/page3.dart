import 'package:adf_flutter_navegacao/navegacao/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // onPressed: () {
              //   Navigator.of(context).pushReplacement(MaterialPageRoute(
              //     settings: const RouteSettings(name: 'page4'),
              //     builder: (context) => const Page4(),
              //   ));
              // },
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: const RouteSettings(name: 'page4'),
                  builder: (context) => const Page4(),
                ));
              },
              child: const Text('Page4 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page4');
              },
              child: const Text('Page4 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
