import 'package:flutter/material.dart';
import 'package:learn_flutter/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Provider Example')),
      body: Center(
        child: Text(
          'Counter: ${counterProvider.counter}',
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: Column(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counterProvider.increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: counterProvider.decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: counterProvider.reset,
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
