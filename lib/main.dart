import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/cubit.dart';
import 'package:learn_flutter/home.dart';

void main() {
  runApp(BlocProvider(create: (_) => CounterCubit(), child: const MyApp()));
}
