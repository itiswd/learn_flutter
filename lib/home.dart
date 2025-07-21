import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/bloc.dart';
import 'package:learn_flutter/bloc/events.dart';
import 'package:learn_flutter/bloc/states.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('BLoC Counter')),
        body: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                'Counter: ${state.counter}',
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
        ),
        floatingActionButton: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(IncrementEvent());
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(DecrementEvent());
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(ResetEvent());
              },
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
