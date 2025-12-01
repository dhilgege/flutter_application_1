// import 'package:flutter_application_1/pages/cubit/change_color_cubit.dart';
// import 'package:flutter_application_1/pages/cubit/counter_cubit.dart';
// import 'package:flutter_application_1/pages/cubit/favorite_count_cubit.dart';
// import 'package:flutter_application_1/pages/cubit/items_cubit.dart';
// import 'package:flutter_application_1/pages/cubit/visibility_cubit.dart';
// import 'package:flutter_application_1/pages/login_Page.dart';
// import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './routes/router.dart';
import './bloc/auth/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider <AuthBloc> (
      create: (context) => AuthBloc(),
      child: MaterialApp.router(routerConfig: router),
    );
  }
}
