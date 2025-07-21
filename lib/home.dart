import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Cubit Counter')),
        body: Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, count) {
              return Text(
                'Counter: $count',
                style: const TextStyle(fontSize: 32),
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 16),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().reset(),
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
