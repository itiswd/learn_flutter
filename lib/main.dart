import 'package:flutter/material.dart';
import 'package:learn_flutter/home.dart';
import 'package:learn_flutter/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Provider Demo', home: const HomePage());
  }
}
