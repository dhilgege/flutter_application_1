import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/routes/router.dart';
import 'package:go_router/go_router.dart';

import '../bloc/auth/auth_bloc.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  final TextEditingController emailC = TextEditingController(
    text: 'admin@gmail.com',
  );
  final TextEditingController passC = TextEditingController(text: 'admin123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LOGIN PAGE')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            controller: emailC,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            autocorrect: false,
            controller: passC,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                AuthEventlogin(emailC.text, passC.text),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(9),
              ),
            ),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthStateLogin){
                context.goNamed(Routes.home);
                }
                if (state is AuthStatError){
                 ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.massage),
                  duration: const Duration(seconds: 2),
                  
                  ),
                  );
                }
              },
              builder: (context, state) {
                if (state is AuthStateLoading){
                return const Text('SABAR YA GANTENG :*');
                }
                return const Text('LOGIN');
              },
            ),
          ),
        ],
      ),
    );
  }
}
