import 'package:adf_flutter_navegacao/navegacao/page2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: const RouteSettings(name: 'page2'),
                  builder: (context) => const Page2(),
                ));
              },
              child: const Text('Page2 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
                // Navigator.of(context).pushNamed('/page2');
              },
              child: const Text('Page2 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
