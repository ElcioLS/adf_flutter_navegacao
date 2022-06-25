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
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  settings: const RouteSettings(name: 'page4'),
                  builder: (context) => const Page3(),
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
              onPressed: () {},
              child: const Text('Page4 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
