import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text(
                'bloc',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () => Navigator.of(context).pushNamed('/bloc'),
            ),
            TextButton(
              child: Text(
                'cubit',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () => Navigator.of(context).pushNamed('/cubit'),
            ),
          ],
        ),
      ),
    );
  }
}
