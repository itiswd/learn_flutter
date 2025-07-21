import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/login_cubit.dart';
import 'screens/login_page.dart';

void main() {
  runApp(BlocProvider(create: (_) => LoginCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Login with Cubit', home: const LoginPage());
  }
}
