import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/router.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // context.go('/settings');
                context.goNamed(routs.Settings);
              },
              child: const Text('Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                // context.go('/ProductPage');
                context.goNamed(routs.products);
              },
              child: const Text('ALL PRODUCT'),
            ),
          ],
        ),
      ),
    );
  }
}
