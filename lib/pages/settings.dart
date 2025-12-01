import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/router.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Settings'),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Settings'),
               ElevatedButton(
              onPressed: () {
                // GoRouter.of(context).go('/');
                context.goNamed(routs.home);
              },
              child: const Text('Back To Home'),
            ),
            ],
          ),
        ),
    );
  }
}